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

  outputs = inputs@{ simple-flake, ... }:
    simple-flake.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, inputs', system, ... }:
        let
          toolchain = inputs'.lean-toolchain.packages.lean-toolchain-4_28;
          buildLean = inputs'.lean-toolchain.lib.buildLean;
          appWithSecrets = inputs'.nix-with-secrets.lib.appWithSecrets;
          agenix = inputs'.nix-with-secrets.packages.agenix;

          python = pkgs.callPackage ./nix/python.nix { };
          ruby = pkgs.ruby_3_1.withPackages (ps: [ ps.jekyll ]);

          sgenseq = inputs.synthetic.packages.${system}.sgenseq;

          cache = pkgs.callPackage ./nix/cache.nix {
            inherit (inputs) sequencelib-cache;
            inherit sequencelib appWithSecrets;
          };

          sequencelib = pkgs.callPackage ./nix/sequencelib.nix {
            inherit buildLean;
            inherit (cache) cache;
          };

          interactive = pkgs.callPackage ./nix/interactive.nix {
            inherit (inputs) solutions oeis_results;
            inherit python sgenseq;
          };

          shells = pkgs.callPackage ./nix/shell.nix {
            inherit (inputs'.shell-utils.lib) shell;
            inherit python ruby toolchain interactive agenix;
          };
        in
        {
          packages = {
            inherit interactive sequencelib;
          };
          devShells = {
            inherit (shells) full basic;
            default = shells.full;
          };
        };
    };
}
