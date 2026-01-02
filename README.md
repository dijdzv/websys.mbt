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

## Usage

```moonbit
// Get canvas context and draw
fn main {
  let canvas = @websys.Document::get_element_by_id("canvas")
  let ctx = @websys.HTMLCanvasElement::get_context(canvas, "2d")

  // Draw a rectangle
  @websys.CanvasRenderingContext2D::set_fill_style(ctx, "#ff0000")
  @websys.CanvasRenderingContext2D::fill_rect(ctx, 10.0, 10.0, 100.0, 100.0)
}
```

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
