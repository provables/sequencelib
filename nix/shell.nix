{ pkgs
, stdenv
, lib
, shell
, python
, ruby
, agenix
, toolchain
, interactive
, cache
, ...
}:
let
  basePackages = (with pkgs; [
    elan
    go-task
    bibtool
    findutils
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
  ]) ++ lib.optional stdenv.isDarwin pkgs.apple-sdk_14
  ++ lib.optional stdenv.isLinux pkgs.strace
  ++ [ python ruby toolchain agenix ];
  devEnvPackages = with pkgs; [
    texliveFull
    ghostscript
    genseq
    cache.create-cache
  ];
in
{
  full = shell {
    name = "sequencelib-full-dev";
    extraInitRc = ''
      export PYTHON=${python}/bin/python
    '';
    packages = basePackages ++ devEnvPackages ++ [ interactive ];
  };
  basic = shell {
    name = "sequencelib-basic-dev";
    extraInitRc = ''
      export PYTHON=${python}/bin/python
    '';
    packages = basePackages;
  };
}


