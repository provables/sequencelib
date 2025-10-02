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
        packages = basePackages ++ devEnvPackages ++ [ app interactive ];
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

      app = pkgs.writeShellApplication {
        name = "synthesize";
        runtimeInputs = [ toolchain pkgs.git pkgs.rsync python ];
        text = ''
          HOME=''${HOME:-$(mktemp -d)}
          export HOME
          ${python}/bin/python -u "$TMP/scripts/synthesize.py" "$@"
          echo "Output at: $TMP/Sequencelib/Synthetic" | \
            ${pkgs.boxes}/bin/boxes -d shell -p h2v1
        '';
      };

      synthesize = pkgs.writeShellApplication {
        name = "synthesize2";
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

      interactive = pkgs.writeShellApplication {
        name = "interactive";
        runtimeInputs = [ python solutions oeis_results ];
        text = ''
          cd scripts
          export TEMPLATE_PATH=${./scripts}
          export SOLUTIONS_FILE_PATH=${solutions}/solutions
          export ALL_OEIS_RESULTS_FILE=${oeis_results}/oeis_results_all.json
          ipython --config=${./scripts/ipython_config.py}
        '';
      };

      dockerImage = buildNixImage {
        name = "provables/synthesize";
        tag = "latest";
        contents = [
          basePackages
          genseq
          app
          path
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
        inherit path;
        inherit synthesize;
        inherit interactive;
      };
      devShells = {
        default = devShell;
      };
    }
    );
}
