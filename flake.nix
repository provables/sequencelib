{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
    shell-utils.url = "github:waltermoreira/shell-utils";
  };
  outputs = { self, nixpkgs, flake-utils, shell-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      shell = shell-utils.myShell.${system};
      blueprints = pkgs.python311.pkgs.buildPythonPackage {
        name = "blueprints";
        src = pkgs.fetchFromGitHub {
          repo = "leanblueprint";
          owner = "PatrickMassot";
          rev = "v0.0.17";
          sha256 = "sha256-MXEk60DI4gUhUZf56uWyo9CaTGUhsrcFBdXKgBCcPBI=";
        };
        build-system = [
          pkgs.python311Packages.setuptools
        ];

        dependencies = with pkgs.python311Packages; [
            plasTeX
            plastexshowmore
            plastexdepgraph
            click
            rich
            rich-click
            tomlkit
            jinja2
            gitpython
        ];

        pythonImportsCheck = [ "leanblueprint" ];
      };
      python = pkgs.python311.withPackages (ps: [ blueprints ]);
    in
    {
      devShell = shell {
        name = "sequencelib";
        extraInitRc = ''
          TOOLCHAIN=$(elan show)
          if [ "$TOOLCHAIN" = "no active toolchain" ]; then
            echo "Setting default toolchain for Lean"
            elan default stable
          else
            echo "Toolchain already configured"
          fi
          lake --version
        '';
        buildInputs = with pkgs; [
          elan
          go-task
          python311
          bibtool
          findutils
          python
          graphviz
          texliveFull
          ghostscript
          ruby_3_1
          rsync
        ] ++ lib.optional stdenv.isDarwin apple-sdk_14;
      };
    }
  );
}
