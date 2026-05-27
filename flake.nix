{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    simple-flake.url = "github:waltermoreira/simple-flake";
    shell-utils.url = "github:waltermoreira/shell-utils";
    synthetic.url = "github:provables/synthetic";
    lean-toolchain.url = "github:provables/lean-toolchain-nix";
    nix-docker-img.url = "github:provables/nix-docker-img";
    sequencelib-cache = {
      url = "file+https://sequencelib-cache.provables.org/build.tgz";
      flake = false;
    };
    sequencelib-docs-cache = {
      url = "file+https://sequencelib-cache.provables.org/docs.tgz";
      flake = false;
    };
    nix-with-secrets.url = "github:provables/nix-with-secrets";
    solutions = {
      url = "git+ssh://git@provables.wetdog.digital/users/git/solutions";
      flake = false;
    };
    oeis_results = {
      url = "git+ssh://git@provables.wetdog.digital/users/git/oeis_results";
      flake = false;
    };
  };

  outputs = inputs@{ self, simple-flake, ... }:
    simple-flake.lib.mkFlake { inherit inputs; } {
      debug = true;
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, inputs', system, ... }:
        let
          leanVersion = "4.28.0";

          toolchain = inputs'.lean-toolchain.lib.toolchain leanVersion;
          inherit (inputs'.lean-toolchain.lib) buildLean;
          appWithSecrets = inputs'.nix-with-secrets.lib.appWithSecrets;
          agenix = inputs'.nix-with-secrets.packages.agenix;

          python = pkgs.callPackage ./nix/python.nix { };
          ruby = pkgs.ruby_3_1.withPackages (ps: [ ps.jekyll ]);

          sgenseq = inputs.synthetic.packages.${system}.sgenseq;

          cache = pkgs.callPackage ./nix/cache.nix {
            inherit (inputs) sequencelib-cache sequencelib-docs-cache;
            inherit sequencelib sequencelibDocs appWithSecrets;
          };

          rev = self.rev or (builtins.elemAt (builtins.split "-" self.dirtyRev) 0);
          sequencelibModule = pkgs.callPackage ./nix/sequencelib.nix {
            inherit buildLean rev leanVersion;
            cacheHook = cache.moduleCacheHook;
            distPhase = ''
              rsync -a .lake/build/ $out/build/
            '';
          };
          sequencelib = (sequencelibModule "Sequencelib").package;
          sequencelibLite = (sequencelibModule "SequencelibLite").package;

          sequencelibDocsModule = pkgs.callPackage ./nix/sequencelib.nix {
            inherit buildLean rev leanVersion;
            cacheHook = cache.docsCacheHook;
          };
          sequencelibDocs = (sequencelibDocsModule "Sequencelib").docs;
          sequencelibLiteDocs = (sequencelibDocsModule "SequencelibLite").docs;

          interactive = pkgs.callPackage ./nix/interactive.nix {
            inherit (inputs) solutions oeis_results;
            inherit python sgenseq;
          };

          shells = pkgs.callPackage ./nix/shell.nix {
            inherit (inputs'.shell-utils.lib) shell;
            inherit python ruby toolchain interactive agenix cache;
          };
        in
        {
          packages = {
            inherit interactive sequencelib sequencelibLite;
            inherit sequencelibLiteDocs sequencelibDocs;
          };
          devShells = {
            inherit (shells) full basic;
            default = shells.full;
          };
        };
    };
}
