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

# Regenerate bindings using the bundled generator
generate:
    mise run generate

# Compatibility alias for the bundled generator
generate-local:
    mise run generate

# Install test dependencies (first time setup)
setup-test:
    cd test && bun install && bunx playwright install chromium

# Build tests
build-test:
    cd test && moon build --target js --release

# Run tests (build + execute)
test: build-test
    node test/run.mjs

# Run tests without rebuilding
test-run:
    node test/run.mjs

# Install npm dependencies
install:
    bun install
    cd test && bun install
