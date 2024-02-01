{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    legacy.url = "path:./legacy";
  };

  outputs = { self, nixpkgs, flake-utils, legacy }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      legacyShell = legacy.devShells.${system};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.just
          pkgs.starship
          pkgs.typst
        ];
        shellHook = ''
          eval "$(starship init bash)"
        '';
      };
      devShells.legacy = legacyShell.default;
    });
}
