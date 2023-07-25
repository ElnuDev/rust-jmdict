{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    go
    gopls
    gnumake
    wget
    gzip
  ];
  shellHook = ''
    export PATH="$HOME/go/bin:$PATH"
  '';
}
