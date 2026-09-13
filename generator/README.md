# Local WebIDL generator

The WebIDL generator is maintained here alongside its generated bindings.
It runs locally and is not published to npm.

From the repository root, run `mise run install`, then `mise run generate`.
`webidl2` and `@webref/idl` are pinned in the root dependency lockfile.
Bun hosts the existing Node-style imports; MoonBit owns generation logic.

`src/parser.mbt` reads WebIDL, `src/gen_interface.mbt` and `src/gen_types.mbt`
generate bindings, and `src/formatter.mbt` assembles per-specification output.
Fix generated behavior here and test the affected browser boundary.
