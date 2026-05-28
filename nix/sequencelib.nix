{ lib
, system
, buildLean
, cache
, distPhase ? ""
, rev
, leanVersion
, ...
}:
leanModule:
let
  sequencelibDeps =
    let
      hashes = {
        "aarch64-darwin" = "sha256-P6jyc6JhJcGHJtLjE0e0e3ATW+3vEWWllUmmXM+cqVU=";
        "aarch64-linux" = "";
        "x86_64-darwin" = "";
        "x86_64-linux" = "sha256-85g3q9oRiwDN1uLN28gC7lXBEn1FUXDcjaz3qrmFygs=";
      };
    in
    buildLean.deps {
      inherit leanVersion;
      name = "sequencelibDeps";
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
    inherit distPhase leanVersion;
    name = "sequencelibFromDeps";
    deps = sequencelibDeps;
    src = lib.cleanSource ./..;
    phases = [ "unpackPhase" "patchPhase" "buildPhase" "distPhase" ];
    nativeBuildInputs = [ cache.moduleCacheHook ];
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
    inherit distPhase leanVersion;
    name = "sequencelibFromDepsDocs";
    deps = sequencelibDeps;
    src = lib.cleanSource ./..;
    phases = [ "unpackPhase" "patchPhase" "buildPhase" "distPhase" ];
    nativeBuildInputs = [ cache.moduleCacheHook cache.docsCacheHook ];
    buildPhase = ''
      runHook preBuild
      mkdir -p $out
      DOCGEN_SRC="file" lake build ${leanModule}:docs
      # find .lake/build/doc -type f -exec sed -i -e 's|'$(pwd)'|/base|g' '{}' \;
      # find .lake/build/doc -type f -exec sed -i -e 's|'$TEMP_REV'|'${rev}'|g' '{}' \;
      rsync -a .lake/build/doc/ $out/
    '';
  });
}
