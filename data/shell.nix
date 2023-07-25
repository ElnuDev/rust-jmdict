{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    go
    gopls
    gnumake
  ];
  shellHook = ''
    export PATH="$HOME/go/bin:$PATH"
  '';
}
