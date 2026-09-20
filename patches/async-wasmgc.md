# WasmGC async candidate

This experimental dependency patch targets official async commit
`a4cbfabbcdf4fa70ef28ad7ccc388082d92371de` (manifest 0.22.1).
It is not an upstream release or a replacement scheduler. Public WebSys JS
dependencies remain unchanged. Generated consumers use the separately pinned
experimental source path described in [WasmGC support](../generator/WASM.md).

Run `mise exec -- moon run scripts/prepare-async-wasmgc.mbtx` to construct
`.work/dependencies/async-wasmgc`. Git and network access are required for the
first run. Preparation pins the revision, applies the tracked patch, and rejects
unexpected source changes or untracked files on reuse. It never edits the
Mooncakes registry. An interrupted or modified checkout is rejected for inspection.

The patch enables the official coroutine/event-loop code for WasmGC, supplies
timer imports, and adds an experimental Promise waiter. The waiter detaches host
callbacks on exit, preserves arbitrary rejection values, and decodes settled
values in MoonBit after resumption. Cancellation during suspension invokes the
caller's abort operation; rejection and decoding failure after settlement do not.
The caller owns whether that abort operation is appropriate for the underlying
operation. Timer/Promise host imports must be supplied by the consumer.

The host subscription must deliver asynchronously, at most once, and release
both callbacks when detached. Abort callbacks must not throw. These are explicit
adapter preconditions, not guarantees for arbitrary injected host code.

The candidate passed the WasmGC package check, 12 JS Promise/Stream
tests and 91 root JS async tests at initial integration. The maintained isolated
headless JS/WasmGC consumer now has 218 cases.
The browser comparison covers settlement, checked primitive decoding,
Fetch cancellation, late settlement and bounded callback reclamation. It does
not establish generated API coverage, full WebIDL conversion, or complete
upstream platform compatibility.

Run `mise run test-async` for the separate `test/async` consumer, which builds
both backends against this local workspace dependency and exercises their browser
imports. The ordinary test task includes this check. Install the browser through
the normal test setup first. This is runtime compatibility, not generated Fetch
or WebGPU coverage.

## Reviewed cancellation and ownership contract

`test/async/cancellation.mbt` drives explicit task cancellation on both backends.
Cancellation requested before the suspended waiter resumes takes precedence over
its settlement. This includes resolving or rejecting the host Promise immediately
before requesting cancellation, while its reaction is still queued. The waiter
does not decode that value; it invokes the owned abort callback once, detaches
the subscription and does not deliver a later result. This is a continuation-order
rule, not a promise that cancellation can undo a result already delivered.

A task canceled before its body starts can still enter the waiter under the
official task-group contract. If it does, the waiter subscribes and aborts when
suspension observes cancellation. Do not assume that canceling a newly spawned
task means its operation body never executes or its abort callback is unnecessary.

Cancellation of the current coroutine is an async cancellation effect. Waiting
on a different canceled task raises `TaskCancelled`; `handle_cancellation` alone
does not catch that error. Timeout conversion is owned by `with_timeout`, not by
the Promise decoder. The consumer tests cover explicit cancellation, timeouts,
late settlements and success/rejection/decoder-failure paths separately.

The abort callback is supplied per wait and must be safe to invoke once even if
the host operation just settled. It must not throw. Waiting twice on a shared
operation with the same abort owner is not an independently cancelable operation;
the caller must choose an appropriate ownership policy. Detaching releases both
subscription callbacks; it does not by itself cancel the host Promise.

## Generated value representation

The waiter retains opaque host values and runs the supplied MoonBit decoder only
after successful resumption. The generator supplies checked conversions rather
than assuming that arbitrary JS values have MoonBit primitive, record or Option
layout. Nullable interface/buffer values are checked and constructed explicitly;
flat dictionary results snapshot their fields before constructing records.
`test/promise` verifies null, absent fields, wrong brands/types, getter failures,
rejection identity and buffer ownership. Unsupported result shapes fail generation;
the exact supported subset is recorded in `generator/WASM.md`.

This review accepts the bounded experimental contract and reproducible source
delivery path. It does not establish upstream API approval, registry availability,
full WebIDL coverage or every backend supported by official async. Keep the
published JS API and its separate dependency unchanged. A generated `wait` must
resolve to the verified adapter, never an unimplemented backend method.
