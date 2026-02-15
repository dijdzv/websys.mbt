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

This package is auto-generated from WebIDL specifications using [webidl-bindgen.mbt](https://www.npmjs.com/package/webidl-bindgen.mbt):

```bash
# Install dependencies (first time only)
bun install

# Regenerate bindings
just generate
```

Source specifications: [@webref/idl](https://www.npmjs.com/package/@webref/idl)

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

### Typed Event Handlers

Event handler setters (e.g., `set_onclick`) accept callbacks with specific event types (e.g., `PointerEvent` instead of `Event`). Event type resolution also relies on MDN — approximately 90 event handlers fall back to the generic `Event` type due to missing MDN pages. See `src/event_type_report.md` for details.

## License

MIT License
