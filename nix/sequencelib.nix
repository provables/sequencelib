{ lib, system, buildLean, cache, ... }:
leanModule:
let
  sequencelibDeps =
    let
      hashes = {
        "aarch64-darwin" = "sha256-jwHj+ZANtXL+g4a6F0xCOJlh03Orx+6TDGnS50cFg0c=";
        "aarch64-linux" = "";
        "x86_64-darwin" = "";
        "x86_64-linux" = "sha256-cyLuTerdbZKyIaIrTOVAcN94d4TLRnE6MKFuZ6vup80=";
      };
    in
    buildLean.deps {
      name = "sequencelibDeps";
      leanVersion = "4.28.0";
      src = with lib; with builtins; cleanSourceWith {
        src = cleanSource ./..;
        filter = p: t:
          (baseNameOf p != ".lake") &&
          (match ".*Sequencelib/Meta.*" (toString p) != null ||
          match ".*Sequencelib/.*" (toString p) == null);
      };
      outputHash = hashes.${system};
      buildPhase = ''
        lake exe cache get
        lake -v build Sequencelib.Meta
        lake -v build Tests
      '';
    };
in
buildLean.package {
  name = "sequencelibFromDeps";
  leanVersion = "4.28.0";
  deps = sequencelibDeps;
  src = lib.cleanSource ./..;
  phases = [ "unpackPhase" "buildPhase" ];
  buildPhase = ''
    mkdir -p $out/build
    mkdir -p .lake
    rsync -a --chmod=0777 ${cache}/build .lake/
    lake build Tests
    lake build ${leanModule}
    rsync -a .lake/build/ $out/build/
    rm -rf .lake
    mkdir -p .lake
  '';
}
