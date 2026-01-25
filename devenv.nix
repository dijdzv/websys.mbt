{ pkgs, lib, ... }:

{
  packages = [
    pkgs.bun
    pkgs.curl  # for moonup installation
  ];

  enterShell = ''
    # Add moon to PATH
    export PATH="$HOME/.moon/bin:$PATH"

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
