# Browser binding architecture

## Scope and status

This document defines the direction for the JS and WasmGC backends. It does not
claim that the experimental WasmGC backend implements the published JS API.
Implemented coverage and commands remain in [WASM.md](WASM.md); outstanding work
belongs in Issues. Broad WebIDL coverage is the destination, with complete
consumer use cases serving as integration milestones.

## Responsibility boundaries

| Layer | Responsibility | Excluded responsibility |
| --- | --- | --- |
| MoonBit compiler and FFI | Host references, supported primitive and closure ABI, Wasm string builtins | Browser API schemas |
| JS value interoperability | JS objects, arrays, typed arrays, null/undefined, Promise handles and value conversion | DOM-specific methods or application state |
| WebIDL generator | Interface and dictionary contracts, inheritance, overload selection, conversions required by WebIDL | A new Promise implementation or application scheduler |
| Async adapter | Promise settlement into MoonBit async, rejection and cancellation policy | Reimplementing Fetch or hiding late application results |
| Consumer | UI state, stale-result protection, device lifecycle and feature detection | Depending on compiler object layouts |

This follows the separation of ECMAScript bindings (`js-sys`), generated Web
bindings (`web-sys`), and language/host conversion (`wasm-bindgen`) in the Rust
ecosystem. MoonBit already supplies part of the last layer. Rust handle tables,
linear-memory string transfers and Cargo feature selection are not requirements
for this WasmGC backend.

## Reuse decisions

Keep the existing JS `Promise[T]` alias to the official async package. Do not add
a second Promise scheduler to the generator. Promise binding and asynchronous
waiting are separate capabilities: a library can expose an opaque host Promise
without supplying a portable MoonBit `wait` implementation.

Inspection on 2026-09-13 found:

| Candidate | Evidence | Decision |
| --- | --- | --- |
| `moonbitlang/async` | Installed 0.21.3 and upstream commit `43e41261f99261f4030efbed1970388930229baa` select `js_async.mbt` only for JS and `unimplemented.mbt` for WasmGC | Retain JS reuse. Evaluate an upstream WasmGC adapter before introducing a local scheduler |
| `moonbit-community/js-ffi` | Inspected 0.4.2 manifest and `src/js/async.mbt`; Promise waiting uses inline JS FFI | Candidate JS value API; not evidence of a ready WasmGC Promise adapter |
| `mizchi/js` | Inspected 0.12.2 manifest and `src/core/moon.pkg`; core has JS/WasmGC implementations, but Promise, error and nullish files are JS-only | Evaluate core value interoperability independently of Promise support; do not reject or adopt the whole library as one unit |
| Existing WebSys generator | `formatter.mbt` aliases official Promise; `utils.mbt` constructs JS Result layouts; dictionary conversion emits JS object layouts | Preserve the working JS path while replacing layout-dependent boundaries through explicit conversion |

These are source inspections, not successful compatibility tests. Adoption of a
new value library requires an isolated two-backend consumer test with the pinned
compiler: strings, null/undefined, object identity, numeric values, callback
identity and error propagation. A missing WasmGC adapter is an upstream design
question, not proof that a library is broken or unmaintained. Upstream work must
include a minimal reproduction and a clearly delimited public API proposal.

### Selected dependency boundary

Do not introduce a mandatory general-purpose JS value library at this stage.
Keep generated host calls on the official typed FFI boundary and retain the
official JS Promise alias. The conversion-plan layer owns WebIDL-specific
conversions; it must not grow a general JS standard library or scheduler.

The two-backend consumer evaluation found that a candidate's generic primitive
and closure identity conversions can build but produce invalid Wasm. Boolean
boxing also needs conversion from Wasm i32 to a JS boolean. Local typed-import
proposals work in Chromium, including integer bounds and DOM listener removal,
but are not available as an accepted dependency API. Requiring that dependency
now would add an unpublished patch set without eliminating the necessary FFI
conversion work. This is a current suitability decision, not a rejection of
future reuse or of upstream contributions. Detailed reproductions remain in
the dependency evaluation Issue.

Reconsider adoption once an available version passes the external-consumer
contract and removes more local boundary maintenance than it introduces.
Dictionary planning and other WebIDL-only work need not wait for that adoption.

WasmGC Promise waiting has a separate gate. Compiler async suspension and the
official closure hook can deliver fulfillment and arbitrary rejection values,
but this is not the official async package's cancellation contract. The inspected
package also selects an unimplemented event loop for WasmGC. An upstream adapter
therefore needs event-loop scheduling, coroutine ownership, abort propagation
and late-settlement cleanup; changing only `js_async` host imports is insufficient.
Do not expose a replacement `wait` claiming those guarantees until they have
been verified. Host Promise observation and structured async waiting remain
separate APIs and separate acceptance requirements.

## Generation pipeline

1. Parse into a lossless WebIDL representation, retaining source location,
   extended attributes, partial kind, defaults and overload identity.
2. Resolve named types, typedefs, partials, includes and inheritance into a
   semantic model. Report unresolved references and cycles before emission.
3. Plan public signatures and host conversions independently of backend text.
   The plan records presence, nullability, conversion direction, numeric policy,
   exceptions and callback lifetime. Unsupported plans produce diagnostics.
4. Emit MoonBit wrappers and backend-specific host calls from the same plan.
   Construct MoonBit Option/Result/struct values in MoonBit, not by reproducing
   compiler tags or field layouts in JavaScript.
5. Package generated bindings with the matching Wasm host runtime and verify an
   external module consuming them. Generation success alone is not compatibility.

The current `wasm_composition.mbt` is an initial resolver, not the semantic model
for full WebIDL. Flattening is sufficient for its restricted fixtures; legal
overrides and overloads need declaration identity and explicit resolution. The
shared parser must preserve partial mixin/dictionary distinctions before those
features are enabled. No backend should silently discard unsupported members.

## Public value contracts

- Host interfaces remain opaque references. Upcasts preserve object identity;
  checked downcasts must validate the host value.
- A nullable value exposes `Option[T]`. An optional nullable argument or field
  needs a separate presence state: omitted, explicit null, or a value. The
  semantic model preserves all three even if a particular WebIDL conversion
  treats two alike. Host `undefined`, absent properties and `null` are not
  globally interchangeable.
- Dictionaries are WebIDL value contracts, not JavaScript Map objects. Required
  fields belong in construction; omitted fields must not be emitted as null.
  Defaults and explicit undefined follow the relevant WebIDL conversion. Public
  builder versus record syntax must be checked against existing JS compatibility
  before exposing a new WasmGC dictionary API.
- Sequences require element conversion; MoonBit arrays are not assumed to be JS
  arrays. Typed arrays remain host buffer views, with copying, sharing and
  detachment behavior made explicit.
- Enum and union values are converted explicitly. Numeric conversion retains
  signedness, width, range and WebIDL annotations; `long long` must not silently
  become a 32-bit integer or a lossy JS number.
- A Promise carries a host settlement value. The adapter converts that value
  before resuming MoonBit. Rejection may contain any JS value. Synchronous throws
  and asynchronous rejection remain distinct, with an unknown-error fallback.
- Cancelling a wait is not inherently cancelling the underlying operation.
  AbortSignal-aware APIs need an explicit abort connection and late-settlement
  handling. Application stale-result checks remain the consumer's responsibility.
- Callback handles preserve registration/removal identity. Lifetime tests cover
  captured state, reentrancy and callbacks after cancellation or disposal.

Common public API semantics are the goal; identical raw FFI signatures are not.
Do not expose a common `wait` method on a backend where it is a stub. Preserve
the published JS API until any necessary breaking change has a migration design.

## Representative acceptance cases

| Surface | Required evidence on both backends |
| --- | --- |
| DOM | Nullable lookup, inherited calls, Unicode, identity-preserving upcast and invalid selector errors |
| Events | Event-init dictionary, omitted versus explicit fields, registration/removal identity and captured callback values |
| Fetch | Request options, response/body conversion, rejection, AbortSignal cancellation and late settlement |
| WebGPU | Nested descriptors, enum/union/sequence conversion, typed-array upload, async device acquisition and device-loss observation |

Use the same semantic assertions for JS and WasmGC, followed by an external
consumer test. GPU availability must be reported separately from binding
correctness; unavailable hardware is not a passed rendering test. Broad coverage
also requires a corpus-wide diagnostic inventory, not just these fixtures.

## Design references

The comparison uses the `js-sys` and `web-sys` API documentation, the wasm-bindgen
Promises and Futures guide, MoonBit FFI documentation, and the Web IDL Standard's
dictionary and JavaScript conversion rules. Dependency decisions above are
bounded by the inspected versions and must be rechecked before adoption.
