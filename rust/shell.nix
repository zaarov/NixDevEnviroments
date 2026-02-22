{ pkgs ? import <nixpkgs> { overlays = [ (import (fetchTarball "https://github.com/oxalica/rust-overlay/archive/master.tar.gz")) ]; } }:

pkgs.mkShell {

  packages = [
    (pkgs.rust-bin.stable."1.82.0".default.override {
      extensions = [ "rust-src" ];
    })

    pkgs.pkg-config
    pkgs.openssl
  ];

  shellHook = ''
    export TMPDIR=/tmp
    mkdir -p /tmp
    echo "🦀 Rust environment activated."
  '';
}
