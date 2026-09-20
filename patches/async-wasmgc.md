# WasmGC async candidate

This experimental dependency patch targets official async commit
`a4cbfabbcdf4fa70ef28ad7ccc388082d92371de` (manifest 0.22.1).
It is not an upstream release or a replacement scheduler. Public WebSys JS
dependencies remain unchanged until generated-consumer compatibility is verified.

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

The current candidate passes the WasmGC package check, 12 JS Promise/Stream
tests, 91 root JS async tests, and an isolated 210-case headless JS/WasmGC
consumer. The browser comparison covers settlement, checked primitive decoding,
Fetch cancellation, late settlement and bounded callback reclamation. It does
not establish generated API coverage, full WebIDL conversion, or complete
upstream platform compatibility.

Run `mise run test-async` for the separate `test/async` consumer, which builds
both backends against this local workspace dependency and exercises their browser
imports. The ordinary test task includes this check. Install the browser through
the normal test setup first. This is runtime compatibility, not generated Fetch
or WebGPU coverage.

Before production adoption, review cancellation precedence and callback ownership, and retain
existing JS API compatibility. The generator must not expose a working `wait`
on a backend that still resolves to an unimplemented dependency method.
