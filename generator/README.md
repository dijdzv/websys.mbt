# Local WebIDL generator

The MIT-licensed sources previously maintained at
https://github.com/dijdzv/webidl-bindgen.mbt now live with their generated bindings.
The import originates at commit `a1fe54c31fd2ae543dd77cb698a24132f059d500`.
The separate npm packaging and release workflow are intentionally not included.

From the repository root, run `mise run install`, then `mise run generate`.
`webidl2` and `@webref/idl` are pinned in the root dependency lockfile.
Bun hosts the existing Node-style imports; MoonBit owns generation logic.

`src/parser.mbt` reads WebIDL, `src/gen_interface.mbt` and `src/gen_types.mbt`
generate bindings, and `src/formatter.mbt` assembles per-specification output.
Fix generated behavior here and test the affected browser boundary.

Previously published npm versions remain historical artifacts. This repository
does not publish the generator. Retirement of the old repository and npm
deprecation are separate administrative actions.
