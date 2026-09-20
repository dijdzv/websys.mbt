# JS and WasmGC consumer contract

The published `dijdzv/websys` package targets JS. The experimental WasmGC
generator emits a selected WebIDL surface and a matching host runtime; its
source bundle includes a pinned async adapter when needed. These paths share
the representative browser behavior below, but not identical APIs or full WebIDL
coverage. A successful row does not cover every overload or option in its family.

## Verified representative behavior

| Contract | JS consumer | WasmGC consumer | Limit |
| --- | --- | --- | --- |
| Input/textarea values, UTF-16 selection, focus identity, composition events, listener removal and frame cleanup | [input lifecycle](../test/src/input_lifecycle.mbt), [frame ownership](../test/src/input_frame.mbt) | [input lifecycle](../test/wasm/input_lifecycle.mbt) | Constructed events and browser APIs, not physical IME acceptance |
| Required, omitted, null and nested dictionary fields with preserved object references | [dictionary roundtrip](../test/src/dictionary_roundtrip.mbt) | [DOM conversion](../test/wasm/check.mbt), [request/render inputs](../test/promise/check.mbt) | Supported field shapes; nullable fields do not imply nullable dictionary arguments/results |
| Real Unicode POST with headers/body; 200/404 responses; missing versus empty response headers | [Fetch contracts](../test/src/fetch_contract.mbt), [specialized Fetch](../test/src/fetch.mbt) | `post_headers`, `post_body`, `fetch_metadata` in [generated consumer](../test/promise/check.mbt) | Selected PostOptions fixture, not complete RequestInit/BodyInit parity |
| Abort during a pending body read rejects the read and releases the reader; server observes connection closure | [pending-body contract](../test/src/fetch_contract.mbt) and browser runner | `fetch_body` in [generated consumer](../test/promise/check.mbt) and its runner | Transport cancellation does not replace application stale-result protection |
| Uint8Array snapshots respect view offset/length and own their bytes; ArrayBuffer transfer does not alias mutable storage | [stream bytes](../test/src/stream_bytes.mbt), [ArrayBuffer bytes](../test/src/arraybuffer_bytes.mbt) | [buffer snapshots](../test/wasm/buffer.mbt), `read_bytes` in [generated consumer](../test/promise/check.mbt) | Checked buffer/view contracts, not arbitrary TypedArray serialization or cross-realm guarantees |
| GPU resource creation, clear/readback, shader rendering, texture upload and canvas configure/render/unconfigure | [readback](../test/src/gpu_readback.mbt), [shader](../test/src/gpu_shader.mbt), [texture](../test/src/gpu_texture.mbt), [canvas](../test/src/gpu_canvas.mbt) | [readback](../test/promise/check.mbt), [shader](../test/promise/gpu_shader.mbt), [texture](../test/promise/gpu_texture.mbt), [canvas](../test/promise/gpu_canvas.mbt) | Headless Chromium software-GPU contracts, not all descriptors or hardware/browser combinations |
| Experimental async value/rejection identity, checked decoding, cancellation precedence and callback detachment | [shared consumer](../test/async/) built for JS | Same consumer built for WasmGC | Compares the pinned experimental adapter, not the published JS async dependency |

The generated WasmGC Promise suite also validates nullable interface/buffer
results, flat dictionaries, wrong types/brands and throwing getters. Those cases
do not establish identical result validation in the published JS Promise API.
JS's wider API and typed Result errors are not reproduced wholesale by WasmGC.
See [supported shapes](WASM.md) and the [async contract](../patches/async-wasmgc.md).

## Reproduce from source

Follow the pinned setup and browser installation in [README](../README.md), then:

```sh
mise run check
mise run test
```

The normal test task runs generator and JS browser tests, WasmGC DOM/input,
the shared async consumer, generated Promise/Fetch/Streams/WebGPU cases,
unsupported-shape diagnostics and relocated source-bundle execution.

The JS consumer is a [separate workspace module](../test/moon.work) importing
the source package. It is not a test of a freshly downloaded Mooncakes release.
The [relocation verifier](../scripts/verify-wasmgc-bundle.mbtx) creates a fresh
system temporary directory outside this repository, exports bindings/runtime
and pinned async source, adds an application with relative workspace members,
compiles it and runs that artifact with the exported runtime. It also checks
rejection of an existing destination. Compiler and browser harness remain
prerequisites; they are not part of the exported library.

These paths let external consumers reproduce a selected API surface without
registry edits or a dependency on application-specific code.

## Use in an application

For JS, `moon add dijdzv/websys` selects a published version. Repository HEAD
can contain unreleased fixes; source-test results do not certify every published
version. A workspace dependency can select reviewed source without changing
release versions. Existing JS record and Promise APIs remain the public JS path.

For experimental WasmGC:

1. Select the application's WebIDL surface. Unsupported shapes must produce
   diagnostics rather than silently degraded bindings.
2. Generate a separate module with `--wasm-gc-input` and `--wasm-gc-module`,
   following [generation and export](WASM.md#experimental-source-bundle).
3. Export to a new directory. Keep `bindings/`, `async/`, their licenses,
   `async-wasmgc.patch` and `PROVENANCE.txt` together.
4. Add the application to the bundle's relative-member `moon.work`, import the
   generated module, and apply the pinned compiler and [string-builtin
   settings](WASM.md#abi-choices).
5. Instantiate with `runtime.mjs` from the same generation. Do not substitute a
   different runtime or resolve async to an unsupported backend. The [consumer
   module](../test/promise/moon.mod) and [linker configuration](../test/promise/moon.pkg)
   are an executable example.

Generated source and host runtime form one compatibility unit. Regenerate and
verify them together when changing WebIDL, compiler or dependencies. The bundle
records provenance; it is not a registry release or upstream approval of the
experimental patch.

## Further work

Full Webref support is separate from this representative consumer milestone.
Remaining constructor, dictionary and Promise shapes are listed in [WASM.md](WASM.md).
Corpus auditing distinguishes parsing, resolution, generation, compilation and
runtime evidence; raw acceptance is not supported-API coverage. Physical IME,
cross-realm values and all browser/GPU combinations remain outside these
headless fixtures. Third-party JS-value-library adoption is not a prerequisite
for either delivery path.
