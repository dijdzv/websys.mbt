# Generation inputs and reproducibility

`src/*.mbt` is generated from the local generator and the installed Webref IDL.
The lockfile pins `@webref/idl` 3.85.0 and `webidl2` 24.5.0. Development compiler
and runtime pins live in `mise.toml`; they do not identify the remote MDN input.

The default generator fetches method/constructor/attribute/event pages from
`https://raw.githubusercontent.com/mdn/content/main/files/en-us/web/api/`.
`throws_mdn.mbt` constructs these URLs; `throws_mdn_ffi.mbt` retains successful
responses only in memory and substitutes an empty string for HTTP/network
failures. It does not retain the MDN commit, response hashes or original text.
There is currently no offline/ref option for that path. Error metadata flags
are overrides, not a replacement for all live MDN input.

Consequently the lockfile alone cannot reproduce historical generated APIs.
Remote content changes and incomplete fetches can affect errors, deprecations
and event types. They are possible sources of variation, not proof of the cause
of a particular difference. Published API changes require their own review;
do not install unrelated regenerated modules as a side effect of a helper fix.

## Bounded-byte helper adoption

The bounded-byte helper was generated using generator commit
`9a14e03` (after current-compiler commit `8379f3e`) on Windows, MoonBit
v0.10.15+943464bfa and Bun 1.3.14. Reproduce in an isolated staging directory:

```sh
mise exec -- moon -C generator build --target js --release --deny-warn
mise exec -- bun generator/_build/js/release/build/webidl-bindgen.js -o .work/js-runtime-review/src
```

This produced 309 MoonBit files. Of these, 303 were byte-identical to the existing
source; `shared.mbt` gained only the 15 emitted lines for the bounded-byte API.
The following five module differences were deliberately **not adopted**:

| Module | Observed API difference |
| --- | --- |
| `webgpu.mbt` | Set-bind-group methods gained Result/error types. |
| `web-nfc.mbt` | NotSupported error variant became NotSupportedError. |
| `webaudio.mbt` | IndexSizeError/InvalidStateError spellings changed. |
| `webcrypto.mbt` | NotSupported variants became NotSupportedError. |
| `observable.mbt` | From/take-until methods gained Result/error types. |

Their precise origin is not established. Historical MDN responses are not
recoverable from the generator's recorded outputs. Reviewing these API changes
and pinning/persisting metadata are separate work from this helper adoption.

`main.mbt` passes IDL-derived type/union/dictionary information to
`gen_shared_types_with_externals`; no MDN throws/deprecation/event map is passed.
That function calls the fixed `emit_js_bytes` helper without metadata arguments.
Only the raw staged `shared.mbt` was copied into `src/shared.mbt`; no module was
hand-edited and no formatter was applied to that generated file. Existing
published modules plus the new shared file compile together and pass the
222-case JS browser consumer. This does not assert that the complete fresh
generator output matches the repository.

| Input / artifact | SHA-256 |
| --- | --- |
| `bun.lock` | `999dbf24a24da0b4d8e21e9e93e346855dd5e68d5cf634ce2f699ee7b3e982fa` |
| Installed Webref `package.json` | `33d9d399d689ba3798722581a062294df5b767c58e87e588fe985109649da886` |
| Webref `webgpu.idl` | `2664031cb7350c67b776119431f180694a9557dc327ac7f1ef7f71aaf2d7b8d3` |
| Webref `web-nfc.idl` | `1d7f2ca048e5cbaae079fe742fb281ae734db7404a5dd26fdc1236526109d8af` |
| Webref `webaudio.idl` | `ac756032041ab0ccd6216a0eb1c19aaE3cb570baaa8084051e6f8200386edce3` |
| Webref `webcrypto.idl` | `2a2143bf3859ba900dfcf1791752a9b9d7f680fa632f41241d86e8849225be9b` |
| Webref `observable.idl` | `7004c960c68bf2ad1dd01b71915752383d541da074421c7af5ac8beaa0a1763c` |
| Adopted raw shared file | `30e4a7aaa59bc7b3f7da4c335e2386b07db0e6a596511c3d3cea10a1e7b89ac7` |
| Shared `git diff HEAD -- src/shared.mbt` at base `9a14e03` | `17258e6f3a51cb080224fe1065b8d1e8e73c520a492aed266d425e4eb3a65c2d` |

For a future full regeneration, inspect the stage, validate intended API
differences, and run the affected consumer checks before installing output.
