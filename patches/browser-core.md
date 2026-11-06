# Experimental browser core profile

The fixed official compiler and standard core are `0.10.20+65efd5b93`, with
moon `0.1.20261104`. Distribution URLs and archive SHA-256 pins are in
[`toolchain.json`](../toolchain.json). The compiler archives have official
adjacent checksums; the core archive hash is a computed content pin, not an
independently verified published checksum.

Ordinary JS binding source and the generator use unmodified `moonbitlang/core/async`
and `core/async/js_async`. Released core does not support the required WasmGC
browser entry point. The separate browser profile applies
[`core-async-wasmgc.patch`](core-async-wasmgc.patch) to that exact core archive.
It is not official WasmGC support or a replacement scheduler.

## Minimal retained difference

The patch changes seven source files. It enables the existing JS event loop and
async entry point for WasmGC, supplies browser timer imports, permits the opaque
Promise boundary type, and adds experimental `core/async/wasm_async` waiting.
It does not change the coroutine implementation, Native runtime C, or use
`runtime_internal` casts. JS and WasmGC comparison consumers use this same core
profile; there is one core scheduler and no external Async dependency.

The added waiter preserves opaque fulfillment/rejection values. It subscribes
before suspension, resumes through the existing core event loop, decodes only
after resumption, and detaches both host callbacks on completion or cancellation.
Interruption invokes the caller-owned abort callback; settled rejection or
decoder failure does not. The host must deliver asynchronously and at most once,
release callbacks on detach, and provide a non-throwing abort operation. Detach
alone does not cancel the underlying host operation.

This profile remains necessary until released core provides the corresponding
browser WasmGC entry, timers and cancellation-aware Promise boundary, or an
available supported alternative passes the same consumer contract. Reassess
each hunk on dependency updates; do not carry it forward mechanically. External
upstream proposals and approval are separate from this local compatibility path.

The 0.10.20 review still finds the entry point restricted to JS, WasmGC timers
unimplemented, and no corresponding WasmGC Promise waiter. All seven patch hunks
therefore remain; the coroutine implementation and its new cancellation effects
stay upstream. The same patch applied to the verified new archive produces
1,917 source files with tree SHA-256
`860dd3bf104b3cdcf8e7aad391666939b1988cb33ee5bfe3fcd1aae14df0fd01`.
Source review and patch application are separate from browser execution evidence.

## Preparation and ownership

Use the ordinary pinned toolchain, with `MOON_HOME` set and no parent
`MOON_CORE_OVERRIDE`:

```sh
moon run scripts/prepare-browser-core.mbtx -- -- -C test/async build --target wasm-gc --release --deny-warn
```

An embedding build may pass `--source-root websys-source` and `--root .work/path`
before the second `--`. Source root contains the toolchain/profile pins, patch
and license. The destination must stay below the invoking directory's `.work`.
The script obtains the official archive, checks its content hash, validates and
applies the patch, and verifies all 1906 resulting source files before publishing
the prepared source. It never edits Mooncakes or the default installed core.

The short default directory name is only a candidate cache identifier. A full
metadata/host identity record must match before use; mismatches are rejected.
A preparation lock prevents concurrent rewriting. Source hashes exclude generated
`_build`/`.moon`; bundle files are separately hashed and recorded with the actual
compiler binary, host, recipe and complete source/patch identities. Changed source
is rejected; changed generated cache is rebuilt. Existing unrelated or interrupted
directories are not reset or deleted automatically.

Only the child build receives `MOON_CORE_OVERRIDE`. Native and ordinary JS builds
continue to use default core. The profile is not implicitly selected by importing
the generated package: omitting preparation must fail to resolve `wasm_async`,
rather than silently using an unimplemented backend.

Core bundling alone uses `--deny-warn --warn-list -deprecated_syntax` because the
fixed official JSON source still has trailing derive syntax. The exclusion applies
to that warning category throughout the bundle, not only the four observed sites.
Other bundle warnings and ordinary product/generator/script compiler warnings
remain fatal. The bundle recipe is part of the identity. Standalone `.mbtx` imports
can also produce experimental-package builder notices: their supported front
matter has no package options acknowledgement; `moon.pkg` importers use exact
experimental-package allowlists.

Windows pathname handling still constrains placement. A relocated consumer's
261-character generated filename existed via .NET but core `fs.kind` returned
not found. Shortening the redundant cache directory name allowed the same
relocated consumer and complete digest to pass. This is a bounded layout repair,
not general long-path support or an upstream filesystem fix.

## Consumer contract

`mise run test-async` builds the independent shared consumer on both JS and
WasmGC. The maintained browser suite has 218 cases: identity, checked decoding,
explicit cancellation, timeout, late settlement and callback detachment. A task
canceled before its body starts can still enter the waiter; subscribing then
observing cancellation must abort and detach. Cancellation before the suspended
waiter resumes wins over queued settlement; it does not undo a result already
delivered. Each wait needs an explicit abort owner when the underlying operation
is cancelable; sharing an abort owner does not create independent ownership.

The maintained generated Promise consumer has 197 browser cases, including
Fetch/Streams and software-GPU contracts. The relocation verifier exports the
bindings, matching host runtime, pinned preparation inputs and licenses into a
fresh directory, then builds/runs that independent application. It rejects an
existing export destination. See the [application instructions](../generator/COMPATIBILITY.md).

The Windows 0.10.20 adoption passed formal setup, strict library/generator checks,
54 generator tests, formatting checks, the existing 218-case JS/WasmGC Async
suite and 197-case generated Promise suite, diagnostics and relocated source
consumer. The Async suite observed zero pending timers and no surviving observed
callbacks after its GC probe, with the control and instance still alive. These
results do not qualify Linux execution with this new profile.

These are bounded compatibility observations. Zero pending timers and zero
surviving observed callback references are not proof of all heap reclamation or
Native resource release. Direct WasmGC `moon test` can omit async bodies; exit
zero or an outline entry alone is not async execution evidence. Real browser
execution remains required. No full WebIDL, cross-realm, physical IME, all-GPU
or upstream support claim follows from these fixtures.

Generated primitive/Option/record conversion remains WebSys's responsibility.
Values are checked after suspension and converted through typed imports; no
compiler object layout is reproduced. Invalid values raise decode errors;
rejection retains its original host value. Current supported result/input
shapes and explicit generation failures are listed in [WasmGC support](../generator/WASM.md).

Official core retains its Apache-2.0 license. Added WebSys bridge source is MIT;
the preparation/export includes WebSys's license alongside core's own license.
