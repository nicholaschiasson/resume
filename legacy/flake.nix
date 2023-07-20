{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.texlive.combined.scheme-full
          pkgs.nodejs_18
          pkgs.nerdfonts
          pkgs.starship
          pkgs.wkhtmltopdf-bin
        ];
        shellHook = ''
          eval "$(starship init bash)"
        '';
      };
    });
}
