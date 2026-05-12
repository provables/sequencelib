{ fetchFromGitHub, python313, python313Packages, ... }:
let
  deps = python313.pkgs.buildPythonPackage {
    name = "blueprints";
    src = fetchFromGitHub {
      repo = "leanblueprint";
      owner = "PatrickMassot";
      rev = "v0.0.18";
      sha256 = "sha256-kikeLc0huJHe4Fq207U8sdRrH26bzpo+IVKjsLnrWgY=";
    };
    build-system = [
      python313Packages.setuptools
    ];
    dependencies = with python313Packages; [
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
in
python313.withPackages (ps: [ deps ])
