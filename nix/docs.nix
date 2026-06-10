
    # sequencelibDocs =
    #   let
    #     hashes = {
    #       "aarch64-darwin" = "sha256-X7egNhx8EHHa7o9APh75a95bjKiHdC5d6fwP6t52oFY=";
    #       "aarch64-linux" = "";
    #       "x86_64-darwin" = "";
    #       "x86_64-linux" = "";
    #     };
    #   in
    #   pkgs.stdenv.mkDerivation {
    #     name = "sequencelibDocs";
    #     nativeBuildInputs = [ pkgs.makeWrapper pkgs.cacert ];
    #     outputHashAlgo = "sha256";
    #     outputHashMode = "recursive";
    #     outputHash = hashes.${system};
    #     buildInputs = with pkgs; [
    #       toolchain
    #       gnutar
    #       rsync
    #       git
    #       curl
    #       findutils
    #       gzip
    #       jq
    #       moreutils
    #       gnused
    #     ];
    #     src = ./.;
    #     dontFixup = true;
    #     REV = self.rev or (builtins.elemAt (builtins.split "-" self.dirtyRev) 0);
    #     buildPhase = ''
    #       echo "Using REV = $REV"
    #       git init -b main
    #       git config user.email "nouser@localhost"
    #       git config user.name "No User"
    #       git commit --allow-empty -m "Empty commit"
    #       git remote add origin git@github.com:provables/sequencelib.git
    #       TEMP_REV=$(git rev-parse HEAD)
    #       mkdir -p $out
    #       export HOME=$(mktemp -d)
    #       lake exe cache get
    #       DOCGEN_SRC="github" lake build Sequencelib:docs --verbose --no-ansi
    #       find .lake/build/doc \( -name \*.trace -or -name \*.hash \) -delete
    #       find .lake/build/doc -type f -exec sed -i -e 's|'$(pwd)'|/base|g' '{}' \;
    #       find .lake/build/doc -type f -exec sed -i -e 's|'$TEMP_REV'|'$REV'|g' '{}' \;
    #       rsync -a .lake/build/doc $out/
    #     '';
    #   };
