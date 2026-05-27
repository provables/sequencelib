{ rclone
, gnutar
, appWithSecrets
, makeSetupHook
, sequencelib
, sequencelibDocs
, sequencelib-cache
, sequencelib-docs-cache
, ...
}:
let
  createGenericCache =
    { name
    , remoteName
    , drv
    , dir
    }:
    appWithSecrets {
      inherit name;
      secrets = [ "rclone.conf.age" ];
      secretsDir = ./../secrets;
      runtimeInputs = [ rclone gnutar ];
      text = ''
        TEMP_BUILD="$(mktemp -d)"
        cd ${drv}
        tar zcf "$TEMP_BUILD"/${remoteName}.tgz ${dir}
        rclone --config "$SECRETS_DIR"/rclone.conf.age copy "$TEMP_BUILD"/${remoteName}.tgz cloudflare-r2:sequencelib-cache/
      '';
    };
  genericHook =
    { name
    , inputPath
    , target
    }:
    makeSetupHook
      {
        inherit name;
        propagatedBuildInputs = [ gnutar ];
        substitutions = {
          inherit inputPath target;
        };
      } ./genericCache.sh;
in
{
  createCache = createGenericCache {
    name = "create-cache";
    remoteName = "build";
    drv = sequencelib;
    dir = "build/";
  };
  createDocsCache = createGenericCache {
    name = "create-docs-cache";
    remoteName = "docs";
    drv = sequencelibDocs;
    dir = "doc/";
  };
  moduleCacheHook = genericHook {
    name = "module-cache-hook";
    inputPath = "${sequencelib-cache}";
    target = ".lake";
  };
  docsCacheHook = genericHook {
    name = "docs-cache-hook";
    inputPath = "${sequencelib-docs-cache}";
    target = ".lake/build/doc";
  };
}
