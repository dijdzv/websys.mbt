# websys

MoonBit bindings for Web APIs (DOM, HTML, Canvas, WebGL, etc.)

## Overview

This package provides type-safe MoonBit bindings for browser APIs, similar to Rust's [web-sys](https://crates.io/crates/web-sys) crate.

## Design Philosophy

Unlike Rust's web-sys which uses Cargo feature flags to include/exclude APIs, this MoonBit implementation includes **all** APIs in a single package. MoonBit's powerful Dead Code Elimination (DCE) automatically removes unused types from the final binary.

| Aspect | Rust web-sys | MoonBit websys |
|--------|-------------|-----------------|
| Unused type removal | Manual (feature flags) | Automatic (DCE) |
| Configuration | `Cargo.toml` features | Just import |
| API coverage | ~3,500 definitions | ~3,500 definitions |

## Installation

```bash
moon add dijdzv/websys
```

## Generation

This package is generated from WebIDL specifications by the local MoonBit
generator in [`generator/`](generator/). The generator is not published to npm.

```bash
# Prepare the pinned compiler (Windows/Linux x64)
mise trust
mise install
mise run setup

# Install generation dependencies
mise run install

# Regenerate bindings
mise run generate
```

Source specifications: [@webref/idl](https://www.npmjs.com/package/@webref/idl)

Development uses MoonBit `0.10.12+1634b282e` and `moonbitlang/async` `0.21.3`.
Published bindings currently support JavaScript. An [experimental WasmGC backend](generator/WASM.md)
generates and tests representative DOM/input, Fetch/Streams, buffer and WebGPU
paths. It does not cover the full published API or make the published package
generally usable on WasmGC. See the [consumer compatibility contract](generator/COMPATIBILITY.md)
for verified behavior, backend differences and external-use instructions.
Change the generator rather than editing generated `src/*.mbt` files.
Generation reads MDN metadata over the network for typed errors and event types.

Run `mise run check` for warning-free compiler checks and `mise run test` for
generator tests plus headless browser integration. Install the browser once with
`mise run setup-test`. An existing
Chromium can be selected with `PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH`.
Playwright runs on Node; Bun remains the generator host and dependency installer.

`mise run test-async` verifies an experimental pinned official-async WasmGC
adapter from a separate consumer module. The normal test task includes it;
Git/network access is needed for first preparation. See the
[adapter boundary](patches/async-wasmgc.md). This does not change the published
JS dependency. Generated Promise/Fetch/Streams/WebGPU coverage and relocated
source delivery are verified separately by `mise run test-promises`, also part
of the normal test task.

Environment and task configuration lives only in `mise.toml`; Nix/devenv,
direnv and just are not required. Nix-managed Linux machines can supply mise
through their system configuration. NixOS may additionally need its usual
foreign-binary support to run the downloaded Linux tools.
Use `mise run fmt` / `mise run fmt-check` for formatting.

The library continues to publish to Mooncakes through the Release workflow.
The generator is maintained locally and is not published to npm.

This update uses `FixedArray` for generated WebIDL sequences and `Debug` for
generated debugging representations. Callers using explicit `Array` types or
`Show` constraints may need to adapt. WebIDL `long long` conversions account for
the compiler's BigInt representation; browser APIs still receive JavaScript numbers.

## Known Limitations

### Typed Errors

Methods that can throw return `Result[T, XxxError]` with specific error variants (e.g., `TypeError`, `SyntaxError`). Error detection relies on MDN documentation — some methods that throw may not have typed errors if their MDN page is missing or in an unrecognized format. In such cases, the method returns a plain value instead of `Result`, and exceptions will propagate as MoonBit panics. If you need to catch these, use `try_catch`:

```moonbit
let err = @websys.try_catch(fn() {
  // call that might throw
})
if err != "" {
  println("Error: \{err}")
}
```

See `src/throws_not_found.md` for the full list of undetected throwing methods.

Getter failures can be supplied explicitly with `--getter-errors <file>` during
normal JS generation or `--wasm-gc-input` generation. The JSON maps interface
or mixin names to attribute names and nonempty exception-name arrays, for example
`{"WindowLocalStorage":{"localStorage":["SecurityError"]}}`. Use the original
WebIDL declaration owner, before mixins are merged. Getter metadata is separate
from setter metadata and also applies to readonly attributes. Declared failures
produce `Result` values with named variants and an `OtherError` fallback; getters
without metadata retain their existing return types. This option does not infer
getter failures from live documentation. `mise run test-getters` checks the
generated WasmGC boundary in headless Chromium, including nullable values and
one property read per call.

`--method-errors <file>` accepts the same JSON shape with method names, for example
`{"Storage":{"setItem":["QuotaExceededError"]}}`. Synchronous methods then return
typed `Result` values on JS and WasmGC, preserving successful return conversion
and unexpected exceptions. Promise methods keep their existing rejection behavior.

### Typed Event Handlers

Event handler setters (e.g., `set_onclick`) accept callbacks with specific event types (e.g., `PointerEvent` instead of `Event`). Event type resolution also relies on MDN — approximately 90 event handlers fall back to the generic `Event` type due to missing MDN pages. See `src/event_type_report.md` for details.

## License

MIT License
