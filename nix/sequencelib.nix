{ lib, system, buildLean, cacheHook, distPhase ? "", rev, ... }:
leanModule:
let
  sequencelibDeps =
    let
      hashes = {
        "aarch64-darwin" = "sha256-Dz45Co9yLAuoNGtgrsFsNL/8xlRv7lFLcTrDMXWFEwM=";
        "aarch64-linux" = "";
        "x86_64-darwin" = "";
        "x86_64-linux" = "sha256-85g3q9oRiwDN1uLN28gC7lXBEn1FUXDcjaz3qrmFygs=";
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
{
  package = (buildLean.package {
    name = "sequencelibFromDeps";
    leanVersion = "4.28.0";
    deps = sequencelibDeps;
    src = lib.cleanSource ./..;
    phases = [ "unpackPhase" "patchPhase" "buildPhase" "distPhase" ];
    inherit distPhase;
    nativeBuildInputs = [ cacheHook ];
    buildPhase = ''
      runHook preBuild
      mkdir -p $out/build
      lake build Tests
      lake build ${leanModule}
      echo ".lake is"
      ls -l .lake/
    '';
  });
  docs = (buildLean.package {
    name = "sequencelibFromDepsDocs";
    leanVersion = "4.28.0";
    deps = sequencelibDeps;
    src = lib.cleanSource ./..;
    phases = [ "unpackPhase" "patchPhase" "buildPhase" "distPhase" ];
    inherit distPhase;
    nativeBuildInputs = [ cacheHook ];
    buildPhase = ''
      runHook preBuild
      mkdir -p $out/build
      git init -b main
      git config user.email "nouser@localhost"
      git config user.name "No User"
      git commit --allow-empty -m "Empty commit"
      git remote add origin git@github.com:provables/sequencelib.git
      TEMP_REV=$(git rev-parse HEAD)

      lake build ${leanModule}:docs

      find .lake/build/doc -type f -exec sed -i -e 's|'$(pwd)'|/base|g' '{}' \;
      find .lake/build/doc -type f -exec sed -i -e 's|'$TEMP_REV'|'${rev}'|g' '{}' \;
      rsync -a .lake/build/doc $out/
    '';
  });
}
