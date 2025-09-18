{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
    shell-utils.url = "github:waltermoreira/shell-utils";
    synthetic.url = "github:provables/synthetic";
    lean-toolchain.url = "github:provables/lean-toolchain-nix";
    nix-docker-img.url = "github:provables/nix-docker-img";
  };
  outputs = { self, nixpkgs, flake-utils, shell-utils, synthetic, lean-toolchain, nix-docker-img }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        shell = shell-utils.myShell.${system};
        toolchain = lean-toolchain.packages.${system}.lean-toolchain-4_20;
        genseq = synthetic.packages.${system}.default;
        supervisedGenseq = synthetic.packages.${system}.supervisedGenseq;
        buildNixImage = nix-docker-img.lib.${system}.buildNixImage;
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
            supervisor
          ];

          pythonImportsCheck = [ "leanblueprint" ];
        };
        python = pkgs.python311.withPackages (ps: [ blueprints ]);
        ruby = pkgs.ruby_3_1.withPackages (ps: [ ps.jekyll ]);
        basePackages = with pkgs; [
          elan
          go-task
          bibtool
          findutils
          python
          graphviz
          rsync
          jq
          moreutils
          git-lfs
          gawk
          wget
          dvc-with-remotes
          coreutils-full
          bashInteractive
          which
          file
          procps
        ] ++ lib.optional stdenv.isDarwin apple-sdk_14
        ++ lib.optional stdenv.isLinux strace;
        devEnvPackages = with pkgs; [
          texliveFull
          ghostscript
          ruby
          toolchain
          genseq
        ];

        devShell = shell {
          name = "sequencelib";
          extraInitRc = ''
            export PYTHON=${python}/bin/python
          '';
          buildInputs = basePackages ++ devEnvPackages ++ [ app ];
        };

        scripts = pkgs.stdenv.mkDerivation {
          name = "scripts";
          src = ./.;
          buildPhase = ''
            mkdir -p $out
            cp -R scripts $out/scripts
          '';
        };

        app = pkgs.writeShellApplication {
          name = "synthesize";
          runtimeInputs = [ toolchain pkgs.git pkgs.rsync ];
          text = ''
            HOME=$(mktemp -d)
            export HOME
            TMP=$(mktemp -d)
            export TMP
            mkdir -p "$TMP"/sequencelib
            cd "$TMP"/sequencelib
            rsync -r ${./.}/ .
            chmod -R +w "$TMP"/sequencelib
            lake exe cache get
            ${python}/bin/python -u ./scripts/synthesize.py "$@"
            echo "Output at: $TMP/sequencelib/Sequencelib/Synthetic" | \
              ${pkgs.boxes}/bin/boxes -d shell -p h2v1
          '';
        };

        dockerImage = buildNixImage {
          name = "provables/synthesize";
          tag = "latest";
          contents = [
            basePackages
            genseq
            supervisedGenseq
            app
            scripts
          ];
          created = "now";
          config.Env = [ "PATH=/bin:/sbin:/root/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/nix/var/nix/profiles/default/sbin" ];
          config.Cmd = [ "${pkgs.bash}/bin/bash" ];
        };

      in
      {
        packages = {
          docker = dockerImage;
          default = dockerImage;
          app = app;
        };
        devShells = {
          default = devShell;
        };
      }
    );
}
