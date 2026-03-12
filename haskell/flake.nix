{
  description = "Haskell dev shell";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
  };

  outputs = { nixpkgs, ... }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

  in {
    devShells.${system}.default = pkgs.mkShell {
      name = "haskell-dev-shell";

      packages = with pkgs; [
        ghc
        cabal-install
        haskell-language-server
        ormolu
      ];

      shellHook = ''
        echo "λ Haskell environment activated"
        echo "GHC:   $(ghc --version)"
        echo "Cabal: $(cabal --version)"
        echo "HLS:   $(haskell-language-server --version 2>/dev/null || echo 'not found')"
      '';
    };
  };
}
