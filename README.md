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

See [API documentation](https://mooncakes.io/docs/#/dijdzv/websys/) for usage.

## Generation

This package is auto-generated from WebIDL specifications using [webidl-bindgen.mbt](https://www.npmjs.com/package/webidl-bindgen.mbt):

```bash
# Install dependencies (first time only)
bun install

# Regenerate bindings
bun run generate
```

Source specifications: [@webref/idl](https://www.npmjs.com/package/@webref/idl)

## License

MIT License
