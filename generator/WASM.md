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

The event fixture also covers a narrowed `CompositionEvent`/`UIEvent` inheritance
chain: Unicode data, inherited init fields, omitted data defaulting to an empty
string, dispatch through an Event upcast and listener removal. These are
constructed DOM events, not physical IME input. UIEvent view/detail, optional
constructor arguments and checked Event downcasts are not covered by this case.

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
boolean/long/double and declared interface/callback references, including nullable
fields. Methods can receive non-null dictionaries. The browser suite exercises
`scrollTo` and separately inspects a synthetic dictionary for inherited required
fields, omission, null, empty strings, false and zero in two Wasm instances.

Dictionary results, nested dictionaries, nullable dictionary arguments, partial
dictionaries and generated convenience constructors are not implemented. Use
record literals for the supported input path. This is not full parity with the
published JS dictionary API or full EventInit/Fetch/WebGPU coverage.

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

Unsupported definitions/types are rejected rather than silently omitted. Full
Webref generation needs partial mixins, nullable callback arguments, optional arguments,
overloads, remaining dictionary conversions, sequences, enum/union conversions, Promise support and
typed exception handling. Linear-memory Wasm is outside this backend's scope.
