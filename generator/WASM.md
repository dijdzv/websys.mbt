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
overloads, dictionaries, sequences, enum/union conversions, Promise support and
typed exception handling. Linear-memory Wasm is outside this backend's scope.
