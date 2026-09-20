# Experimental WasmGC backend

The [binding architecture](ARCHITECTURE.md) defines responsibility boundaries,
reuse decisions and the conversion model for further backend work.

The generator can emit WasmGC imports and a matching JavaScript host module from
a restricted WebIDL file. This is an experimental path, not WasmGC support for
the published `dijdzv/websys` package or the complete Webref corpus.

Run `mise run test-wasm` to generate the DOM fixture, compile it and exercise it
in headless Chromium. `mise run test` includes this verification automatically.
The generator flag is `--wasm-gc-input <file> -o <directory>`; it writes
`bindings.mbt` and `runtime.mjs` after generation succeeds. The default JS
generation path is unchanged.

For a standalone module directory, additionally pass
`--wasm-gc-module owner/package`. This explicitly writes `moon.mod` and `moon.pkg`
alongside the bindings and matching runtime. Use a dedicated generated directory:
the option replaces its module metadata and does not manage release versions.
Without this option, generation continues to write only the original two files.
Names use slash-separated nonempty ASCII letter/digit/underscore/hyphen segments,
with at least an owner and package segment. Relative paths and manifest syntax
are rejected before output is written.

Add the generated directory to the consumer workspace, import that module, and
instantiate its Wasm with `createImports()` from the runtime generated in the same
invocation. The consumer still supplies the string-builtin linker configuration
described below. This does not publish a registry package or expand the supported
WebIDL surface.

## ABI choices

- DOM values use opaque `#external` references, not integer handles.
- Strings use MoonBit's `use-js-builtin-string` link option. Instantiate with
  `builtins: ['js-string']` and `importedStringConstants: '_'`.
- Nullable strings and declared references expose `Option`. Private opaque
  imports carry the host value; MoonBit wrappers explicitly convert `null` to
  `None` and non-null values to `Some`, without exposing enum layout to JS.
  Empty strings remain `Some("")`. Setters follow the browser's own null semantics.
- The generated `createImports()` supplies `websys` and the official
  `moonbit:ffi.make_closure` hook. No dependency on Wasm closure layout is needed.
- Construct an opaque callback handle once and reuse it for registration and
  removal. Reconstructing a listener creates a different JS function.
- JavaScript is generated only for the browser boundary; generation and test
  assertions remain in MoonBit. Host exceptions currently propagate unchanged.

These choices follow the [MoonBit FFI ABI](https://docs.moonbitlang.com/en/latest/language/ffi.html)
and [WasmGC linker options](https://docs.moonbitlang.com/en/latest/toolchain/moon/package.html).

## Current scope

### Promise operation results

Promise-returning operations support DOMString, boolean, long, unsigned long
and finite double settlement through generated `WebsysPromise[T]` values.
`Promise<undefined>` settles to Unit after checking for host undefined.
Declared interface results are also supported with a same-realm `instanceof`
check before preserving the host reference. Unknown, dictionary and callback
types are not treated as interfaces. This is not cross-realm brand validation.
`wait(abort=...)` uses the pinned experimental official-async adapter described
in [the adapter boundary](../patches/async-wasmgc.md). Generated modules require
that patched workspace dependency; an unmodified registry version does not
provide the experimental `wasm_async` package. Generated host imports include
its timer/subscription boundary. Existing published JS Promise APIs are unchanged.

Values are checked after suspension and converted through typed imports. Invalid
values raise `PromiseDecodeError`; host rejection remains the adapter's Rejection
with its original value. Operation exceptions become rejected Promises. A supplied
abort callback runs only when waiting is interrupted, not on settled rejection
or decoding failure. The default does not abort the underlying operation; pass
the operation's cancellation capability explicitly when required.

`mise run test-promises` generates a separate module and executes 44 browser
cases, including a real fetched Response's text, numeric boundaries, invalid
values, rejection, synchronous operation failure, timeout and late settlement.
It also initiates Fetch through a narrowed generated Window API, passes a
generated RequestInit containing AbortSignal, decodes Response, and awaits its
text. The cancellation case observes an active intercepted request and its
browser ERR_ABORTED event, alongside the generated signal's aborted state.
Synthetic receivers check rejection and a non-Response result. Full standard
Fetch signatures and stream-body cancellation remain separate work.
It is included in the normal test task.
The reader fixture also cancels real ReadableStreams and releases the reader
lock after either successful or rejected source cancellation. Its narrowed
cancel signature requires a string reason; optional/any reasons and structured
read results are not established by this fixture.
Promise attributes, parameters, nullable, dictionary and sequence
settlement are rejected rather than assigned an unchecked representation.

### ArrayBuffer references

The built-in WebIDL `ArrayBuffer` type is an opaque host reference. Operation
arguments/results and attributes, including nullable values, preserve identity;
they do not copy bytes or expose a MoonBit array layout. A synthetic receiver in
the external-module browser fixture checks identity, shared mutation, null and
detached-buffer reference preservation in four Wasm instances. Preserving a
detached reference does not make it valid for a browser API requiring live bytes.

Buffer construction, element access, SharedArrayBuffer, TypedArray, BufferSource
unions and Promise settlement are not provided by this change. This is not yet
a usable Web Crypto digest path. The JS generation path remains unchanged.

### Constructors and events

Declared constructors with explicit, non-variadic arguments generate `Type::new`.
They use the same typed argument conversion as instance methods, including input
dictionaries. Constructors are not inherited into child interfaces. Multiple
constructor overloads and optional constructor arguments are still rejected.

The narrowed Event fixture requires an explicit EventInit argument. Browser
tests construct events from MoonBit, check omitted/default and explicit Boolean
options, dispatch them to a DOM element, and verify preventDefault for cancelable
and non-cancelable events. This is event construction evidence, not support for
the complete standard Event constructor signature or real keyboard/IME input.

### External module boundary

WebIDL `unsigned long` uses UInt on WasmGC. Outgoing i32 values are explicitly
converted to unsigned JS numbers, including dictionary fields. The browser
fixture checks 2147483648 and 4294967295 directly in the host object.
Nullable unsigned long values use UInt?. Other nullable numeric interface values
remain unsupported. The input fixture checks UTF-16 selection endpoints around
an emoji, backward selection on input/textarea, and null selection positions on
a number input. Its setSelectionRange signature requires direction explicitly;
the optional standard argument is not yet represented.

The event fixture also covers a narrowed `CompositionEvent`/`UIEvent` inheritance
chain: Unicode data, inherited init fields, omitted data defaulting to an empty
string, dispatch through an Event upcast, checked downcasts and listener removal. These are
constructed DOM events, not physical IME input. UIEvent view/detail, optional
constructor arguments and physical IME sequencing are not covered by this case.

For each declared ancestor, interfaces expose `from_<ancestor>_opt`. The host
checks `instanceof` against the runtime's global constructor; MoonBit constructs
the resulting Option and preserves the original object on success. An absent
constructor or nonmatching object produces None. This is a same-realm check,
not cross-realm WebIDL brand validation or a security boundary. The browser
fixture recovers CompositionEvent data inside an Event callback and rejects a
plain Event.

The WasmGC test imports generated bindings from the separate
`dijdzv/websys-wasm-fixture` module through a local MoonBit workspace. Its host
runtime is generated in the same invocation as the bindings, and the consumer
sets the compiler's string-builtin and imported-string-constant options.
`mise run test-wasm` verifies this module boundary using the existing browser
assertions in two Wasm instances. The fixture is not a published package;
registry distribution and complete consumer API coverage remain separate work.

### Corpus inventory

After building the generator, run
`mise exec -- bun generator/_build/js/release/build/webidl-bindgen.js --audit-wasm-gc -o .work/wasm-inventory`.
This reads the installed, lockfile-pinned `@webref/idl` corpus without fetching
MDN data or generating bindings. `wasm-inventory.json` contains per-specification
definition counts, construct/type occurrences, parse errors and the first raw
WasmGC validation rejection. Preserve the lockfile and generator revision when
comparing reports from different runs.

This is a planning inventory, not a support percentage. Passing raw validation
does not prove dependency resolution, code generation, compilation or runtime
behavior. Counts include repeated occurrences rather than unique APIs; only the
first raw rejection is reported, so later unsupported features can remain.
Missing optional report fields indicate no recorded error at that stage.
Use focused generation and browser tests to establish support for each API.

### Dictionary inputs

Input dictionaries use public MoonBit records and explicit `to_js()` conversion.
Required fields are provided in record literals; optional fields use `Option`,
and optional nullable fields use `Nullable::{Undefined, Null, Value}` as in the
JS API. Omitted fields are not written to the host object, including fields with
WebIDL defaults; the receiving browser API applies its defaults. Required nullable
fields retain explicit null. No MoonBit record or enum layout crosses the ABI.

Dictionary inheritance reuses the shared resolver after validation of missing
parents, cycles and duplicate fields. Supported field values are strings,
boolean/long/double, nested dictionary records and declared interface/callback references, including nullable
fields. Methods can receive non-null dictionaries. The browser suite exercises
`scrollTo` and separately inspects a synthetic dictionary for inherited required
fields, omission, null, empty strings, false and zero in two Wasm instances.

Nested records are converted recursively with `to_js()` before the opaque host
object enters FFI. Each conversion creates a new host dictionary; shared MoonBit
record values do not imply shared JavaScript object identity. The external
consumer checks nested required values, omission, explicit null, Unicode and
zero in four Wasm instances.

Synchronous dictionary results, nullable dictionary arguments, partial
dictionaries and generated convenience constructors are not implemented. Use
record literals for the supported input path. This is not full parity with the
published JS dictionary API or full EventInit/Fetch/WebGPU coverage.

### Promise dictionary results

Promise results may contain flat dictionaries with checked primitive or declared
interface fields, and opaque `any` fields represented by `JsValue`. The host
properties are read once into a snapshot, validated, and then assembled into a
MoonBit record. No compiler-specific record layout crosses FFI. Missing or
undefined optional fields become `None`; an `any` field containing null, false,
zero, or an object retains its value and object identity in `Some`.

Getter exceptions are preserved by `DictionaryReadError`; invalid field values
produce a TypeError carried by the same error. Promise rejection remains a
separate async rejection. Required fields cannot be missing. Defaults, nullable
fields and nested result dictionaries are currently rejected during generation.
This checked result boundary does not implement general WebIDL coercion.

The browser consumer reads actual `ReadableStream` chunks and end-of-stream,
checks rejection identity and cancellation of a pending read, and releases the
reader lock. Generic stream chunks are not assumed to be byte buffers; checked
typed-array conversion is a separate boundary.

Generated opaque `JsValue` values provide `to_bytes() -> Bytes?` for same-realm
Uint8Array chunks. It copies only the view's element range, including a nonzero
byte offset, into owned MoonBit bytes. Empty views are valid. Other typed arrays,
DataView, ArrayBuffer, ordinary arrays and detached views return None. This is
an explicit byte-consumer choice, not a conversion applied to generic streams.
Cross-realm views are not currently accepted. Concurrently modified shared
buffers do not imply an atomic snapshot.

The external consumer reads multiple chunks to completion, handles empty and
partial views, and cancels invalid chunks before releasing its reader. Required
result fields and unsupported default/nullable/nested result diagnostics have
dedicated regression checks.

The generated consumer also connects `Response.body` to the byte read loop.
A local HTTP fixture covers data, empty responses, HTTP 204 and an unfinished
body whose headers have already arrived. Timeout aborts that pending read,
releases the reader lock, and closes the server connection. A separately
constructed `Response(null)` checks nullable-body conversion: Chromium may
expose an empty stream for an HTTP 204 response instead of a null body.

Supported: interfaces with inheritance, partial interfaces, mixins/includes,
instance attributes/operations, DOM strings,
boolean/long/double values, references to declared interfaces, and one-argument
void callbacks. The fixture is a deliberately narrowed DOM surface, not a copy
of the complete DOM IDL. It tests Unicode round-trips, booleans, captured callback
state, duplicate listener registration and removal in two Wasm instances.
Nullable attributes, operation arguments and results are supported for strings
and declared references. Tests cover missing/found nodes, null versus empty
strings, Unicode values and nullable DOM arguments.
Partial interfaces and included mixins are composed before generation, independent
of declaration order. Unknown targets and duplicate includes are rejected. Mixins
do not create standalone host types. The browser fixture exercises an attribute
from a partial interface and event operations from a mixin.
Inherited members include parent partials and mixins. Generated `as_<ancestor>`
methods preserve host object identity when a parent reference is required.
Missing parents and inheritance cycles are rejected. Member overrides and
overloads remain unsupported and produce generation errors.

Unsupported definitions/types are rejected rather than silently omitted.

WasmGC validates raw WebIDL types before shared AST conversion. Compound
dictionary inputs consume the separate semantic type model, preserving record
key/value types and original string kinds. Other record conversions and unsupported
compound types remain rejected. Nested types and annotations are checked
recursively; unsupported records must not silently become any.

Dictionary fields may use nested sequences, string-keyed records and
unions of supported scalar/container values or declared interface references.
Sequence inputs use MoonBit arrays;
records use arrays of key/value pairs; unions use generated explicit cases.
Generated MoonBit code walks these values and builds host arrays or null-prototype
objects through typed imports, without exposing compiler layouts. Duplicate
record keys overwrite earlier entries. The receiving browser API applies WebIDL
string validation/coercion; this builder does not replace browser conversion.
Optional fields retain omission. Outer nullable compound fields use Option when
required and Nullable::{Undefined, Null, Value} when optional; presence is read
from the semantic model even when the legacy AST drops it. Interface branches
preserve host identity. Nullable values nested inside containers remain unsupported.

The external browser consumer sends real POST requests using both branches of
the pinned Fetch HeadersInit shape and a Unicode text body. Its PostOptions
fixture is deliberately limited; this does not establish full RequestInit or
BodyInit support. The published JS API remains unchanged.
Additional POST cases cover omitted/null bodies, Blob, URLSearchParams and text.
Synthetic receivers separately verify omission versus null and object identity.

Typedef aliases are resolved before dictionary inheritance and interface
composition. Forward references and nested type containers are traversed;
cycles and duplicate names are rejected. Public signatures currently use the
resolved type rather than emitting a separate named alias. Resolving an alias
does not add support for its underlying union, sequence or other unsupported
conversion. Type annotations on typedefs remain unsupported.

Full Webref generation needs partial mixins, nullable callback arguments, optional arguments,
overloads, remaining dictionary conversions, sequences, enum/union conversions, remaining Promise conversions and
typed exception handling. Linear-memory Wasm is outside this backend's scope.
