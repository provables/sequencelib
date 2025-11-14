{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
    shell-utils.url = "github:waltermoreira/shell-utils";
    synthetic.url = "github:provables/synthetic";
    lean-toolchain.url = "github:provables/lean-toolchain-nix";
    nix-docker-img.url = "github:provables/nix-docker-img";
    solutions = {
      url = "git+ssh://git@provables.wetdog.digital/users/git/solutions";
      flake = false;
    };
    oeis_results = {
      url = "git+ssh://git@provables.wetdog.digital/users/git/oeis_results";
      flake = false;
    };
  };
  outputs =
    { nixpkgs
    , self
    , flake-utils
    , shell-utils
    , synthetic
    , lean-toolchain
    , nix-docker-img
    , solutions
    , oeis_results
    , ...
    }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      shell = shell-utils.myShell.${system};
      toolchain = lean-toolchain.packages.${system}.lean-toolchain-4_20;
      genseq = synthetic.packages.${system}.default;
      sgenseq = synthetic.packages.${system}.sgenseq;
      buildNixImage = nix-docker-img.lib.${system}.buildNixImage;
      blueprints = pkgs.python313.pkgs.buildPythonPackage {
        name = "blueprints";
        src = pkgs.fetchFromGitHub {
          repo = "leanblueprint";
          owner = "PatrickMassot";
          rev = "v0.0.18";
          sha256 = "sha256-kikeLc0huJHe4Fq207U8sdRrH26bzpo+IVKjsLnrWgY=";
        };
        build-system = [
          pkgs.python313Packages.setuptools
        ];

        dependencies = with pkgs.python313Packages; [
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
      python = pkgs.python313.withPackages (ps: [ blueprints ]);
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
        netcat
      ] ++ lib.optional stdenv.isDarwin apple-sdk_14
      ++ lib.optional stdenv.isLinux strace;
      devEnvPackages = with pkgs; [
        texliveFull
        ghostscript
        ruby
        toolchain
        genseq
        python
      ];

      devShell = shell {
        name = "sequencelib";
        extraInitRc = ''
          export PYTHON=${python}/bin/python
        '';
        packages = basePackages ++ devEnvPackages ++ [ interactive ];
      };

      scripts = pkgs.stdenv.mkDerivation {
        name = "scripts";
        src = ./.;
        buildPhase = ''
          mkdir -p $out
          cp -R scripts $out/scripts
        '';
      };

      path = pkgs.writeShellApplication {
        name = "get-path";
        text = ''
          echo ${./.}
        '';
      };

      synthesize = pkgs.writeShellApplication {
        name = "synthesize";
        runtimeInputs = [ python solutions oeis_results ];
        text = ''
          export TEMPLATE_PATH=${./scripts}
          export SOLUTIONS_FILE_PATH=${solutions}/solutions
          export ALL_OEIS_RESULTS_FILE=${oeis_results}/oeis_results_all.json
          OUTPUT_DIR=''${OUTPUT_DIR:-$(mktemp -d)}
          export OUTPUT_DIR
          ${python}/bin/python -u "${./scripts/synthesize.py}" "$@"
          echo "Output at: $OUTPUT_DIR" | ${pkgs.boxes}/bin/boxes -d shell -p h2v1
        '';
      };

      synthesizeBundled = pkgs.writeShellApplication {
        name = "synthesize-bundled";
        runtimeInputs = [ sgenseq synthesize ];
        text = ''
          E=$(sgenseq)
          GENSEQ_PORT=$(echo "$E" | cut -d' ' -f1)
          GENSEQ_CTRL=$(echo "$E" | cut -d' ' -f2)
          export GENSEQ_PORT
          export GENSEQ_CTRL
          ${synthesize}/bin/synthesize "$@"
          "$GENSEQ_CTRL" stop all
          "$GENSEQ_CTRL" shutdown
        '';
      };

      interactive = pkgs.writeShellApplication {
        name = "interactive";
        runtimeInputs = [ python solutions oeis_results sgenseq ];
        text = ''
          cd scripts
          E=$(sgenseq)
          GENSEQ_PORT=$(echo "$E" | cut -d' ' -f1)
          GENSEQ_CTRL=$(echo "$E" | cut -d' ' -f2)
          export GENSEQ_PORT
          export GENSEQ_CTRL
          export TEMPLATE_PATH=${./scripts}
          export SOLUTIONS_FILE_PATH=${solutions}/solutions
          export ALL_OEIS_RESULTS_FILE=${oeis_results}/oeis_results_all.json
          ipython --config=${./scripts/ipython_config.py}
          "$GENSEQ_CTRL" stop all
          "$GENSEQ_CTRL" shutdown
        '';
      };

      dockerImage = buildNixImage {
        name = "provables/synthesize";
        tag = "latest";
        contents = [
          basePackages
          genseq
          path
          scripts
          synthesizeBundled
          interactive
        ];
        created = "now";
        config.Env = [ "PATH=/bin:/sbin:/root/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/nix/var/nix/profiles/default/sbin" ];
        config.Cmd = [ "${pkgs.bash}/bin/bash" ];
      };

      sequencelib =
        let
          hashes = {
            "aarch64-darwin" = "sha256-Xo8dNzpLg5dt6lGDBUOEkR/orTP8AVulhDZkWCMehGk=";
            "aarch64-linux" = "";
            "x86_64-darwin" = "";
            "x86_64-linux" = "";
          };
        in
        pkgs.stdenv.mkDerivation {
          __structuredAttrs = true;
          unsafeDiscardReferences.out = true;
          name = "sequencelib";
          nativeBuildInputs = [ pkgs.makeWrapper pkgs.cacert ];
          outputHashAlgo = "sha256";
          outputHashMode = "recursive";
          outputHash = hashes.${system};
          buildInputs = with pkgs; [
            toolchain
            gnutar
            rsync
            git
            curl
            findutils
            gnused
            gzip
            jq
            moreutils
          ];
          src = ./.;
          buildPhase = ''
            mkdir -p $out
            export HOME=$(mktemp -d)
            lake exe cache get
            echo "====== Building..."
            lake build --verbose --no-ansi 
            echo "====== Fixing traces..."
            for f in $(find .lake/build -name \*.trace); do
              jq '.log[].message = ""' "$f" | sponge "$f"
            done
            echo "====== Rewriting paths..."
            find .lake/build -name \*.trace -exec sed -i -e 's|'$(pwd)'|/base|g' '{}' \;
            echo "====== Copying output..."
            rsync -a .lake/build/ $out
          '';
          phases = [ "unpackPhase" "buildPhase" ];
        };

      sequencelibDocs =
        let
          hashes = {
            "aarch64-darwin" = "sha256-+XhHmBPtvwUJqvvsZ2a4/paP7YA7VZIzgj15stpR/Ss=";
            "aarch64-linux" = "";
            "x86_64-darwin" = "";
            "x86_64-linux" = "";
          };
        in
        pkgs.stdenv.mkDerivation {
          name = "sequencelibDocs";
          nativeBuildInputs = [ pkgs.makeWrapper pkgs.cacert ];
          outputHashAlgo = "sha256";
          outputHashMode = "recursive";
          outputHash = hashes.${system};
          buildInputs = with pkgs; [
            toolchain
            gnutar
            rsync
            git
            curl
            findutils
            gzip
            jq
            moreutils
            gnused
          ];
          src = ./.;
          dontFixup = true;
          REV = self.rev or (builtins.elemAt (builtins.split "-" self.dirtyRev) 0);
          buildPhase = ''
            git init -b main
            git config user.email "nouser@localhost"
            git config user.name "No User"
            git commit --allow-empty -m "Empty commit"
            git remote add origin git@github.com:provables/sequencelib.git
            TEMP_REV=$(git rev-parse HEAD)
            mkdir -p $out
            export HOME=$(mktemp -d)
            lake exe cache get
            DOCGEN_SRC="github" lake build Sequencelib:docs --verbose --no-ansi
            find .lake/build/doc \( -name \*.trace -or -name \*.hash \) -delete
            find .lake/build/doc -type f -exec sed -i -e 's|'$(pwd)'|/base|g' '{}' \;
            find .lake/build/doc -type f -exec sed -i -e 's|'$TEMP_REV'|'$REV'|g' '{}' \;
            rsync -a .lake/build/doc $out/
          '';
        };
    in
    {
      packages = {
        docker = dockerImage;
        default = dockerImage;
        inherit path;
        inherit synthesize;
        inherit interactive;
        inherit synthesizeBundled;
        inherit sequencelibDocs sequencelib;
      };
      devShells = {
        default = devShell;
      };
    }
    );
}
