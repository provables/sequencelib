{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
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
          rev = "v0.0.18";
          sha256 = "sha256-kikeLc0huJHe4Fq207U8sdRrH26bzpo+IVKjsLnrWgY=";
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
            beautifulsoup4
            html5lib
            ipython
            more-itertools
            requests
            appdirs
            networkx
            numpy
        ];

        pythonImportsCheck = [ "leanblueprint" ];
      };
      python = pkgs.python311.withPackages (ps: [ blueprints ]);
      ruby = pkgs.ruby_3_1.withPackages (ps: [ ps.jekyll ]);
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
          bibtool
          findutils
          python
          graphviz
          texliveFull
          ghostscript
          ruby
          rsync
          jq
          moreutils
          git-lfs
          gawk
        ] ++ lib.optional stdenv.isDarwin apple-sdk_14;
      };
    }
  );
}
