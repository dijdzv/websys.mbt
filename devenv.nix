{ pkgs, lib, ... }:

{
  packages = [
    pkgs.bun
    pkgs.curl  # for moonup installation
    pkgs.chromium  # for integration tests (Playwright)
    pkgs.just  # task runner
  ];

  enterShell = ''
    # Add moon to PATH
    export PATH="$HOME/.moon/bin:$PATH"

    # Use Nix's Chromium for Playwright (no extra download needed)
    export PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH="$(which chromium)"

    # Install MoonBit toolchain if not present
    if ! command -v moon &> /dev/null; then
      echo "Installing MoonBit toolchain..."
      curl -fsSL https://cli.moonbitlang.com/install/unix.sh | bash
      export PATH="$HOME/.moon/bin:$PATH"
    fi

    echo "websys.mbt development environment"
    echo "  moon: $(moon version 2>/dev/null || echo 'not found')"
    echo "  bun:  $(bun --version)"
  '';
}
