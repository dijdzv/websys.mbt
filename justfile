# websys.mbt task runner

# Claude Code
claude *args:
    claude --dangerously-skip-permissions {{args}}

# Check generated bindings
check:
    moon check

# Format generated code
fmt:
    moon fmt

# Regenerate bindings from WebIDL specs (npm version)
generate:
    rm -f ./src/*.mbt && webidl-bindgen.mbt --all --per-spec -o ./src/ && moon fmt

# Regenerate bindings from local webidl-bindgen.mbt build
generate-local:
    rm -f ./src/*.mbt && bun ../webidl-bindgen.mbt/_build/js/release/build/webidl-bindgen.js --all --per-spec -o ./src/ && moon fmt

# Install test dependencies (first time setup)
setup-test:
    cd test && bun install && bunx playwright install chromium

# Build tests
build-test:
    cd test && moon build --target js

# Run tests (build + execute)
test: build-test
    cd test && bun run run.mjs

# Run tests without rebuilding
test-run:
    cd test && bun run run.mjs

# Install npm dependencies
install:
    bun install
    cd test && bun install
