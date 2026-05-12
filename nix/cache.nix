{ stdenv
, rclone
, rsync
, gnutar
, appWithSecrets
, sequencelib
, sequencelib-cache
, ...
}:
{
  create-cache = appWithSecrets {
    name = "create-cache";
    secrets = [ "rclone.conf.age" ];
    secretsDir = ./../secrets;
    runtimeInputs = [ rclone gnutar ];
    text = ''
      TEMP_BUILD="$(mktemp -d)"
      cd ${sequencelib}
      tar zcf "$TEMP_BUILD"/build.tgz build/
      rclone --config "$SECRETS_DIR"/rclone.conf.age copy "$TEMP_BUILD"/build.tgz cloudflare-r2:test/
    '';
  };
  cache = stdenv.mkDerivation {
    name = "sequencelib-cache";
    src = builtins.path { path = ./.; filter = p: t: false; };
    buildInputs = [ rsync gnutar ];
    phases = [ "buildPhase" ];
    buildPhase = ''
      mkdir -p $out
      tar zxf ${sequencelib-cache} -C $out
    '';
  };
}
