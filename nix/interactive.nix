{ writeShellApplication
, python
, solutions
, oeis_results
, sgenseq
, ...
}:
let
  # scripts = stdenv.mkDerivation {
  #   name = "scripts";
  #   src = ./.;
  #   buildPhase = ''
  #     mkdir -p $out
  #     cp -R scripts $out/scripts
  #   '';
  # };

  # path = writeShellApplication {
  #   name = "get-path";
  #   text = ''
  #     echo ${./.}
  #   '';
  # };

  # synthesize = writeShellApplication {
  #   name = "synthesize";
  #   runtimeInputs = [ python solutions oeis_results ];
  #   text = ''
  #     export TEMPLATE_PATH=${./scripts}
  #     export SOLUTIONS_FILE_PATH=${solutions}/solutions
  #     export ALL_OEIS_RESULTS_FILE=${oeis_results}/oeis_results_all.json
  #     OUTPUT_DIR=''${OUTPUT_DIR:-$(mktemp -d)}
  #     export OUTPUT_DIR
  #     ${python}/bin/python -u "${./scripts/synthesize.py}" "$@"
  #     echo "Output at: $OUTPUT_DIR" | ${pkgs.boxes}/bin/boxes -d shell -p h2v1
  #   '';
  # };

  # synthesizeBundled = writeShellApplication {
  #   name = "synthesize-bundled";
  #   runtimeInputs = [ sgenseq synthesize ];
  #   text = ''
  #     E=$(sgenseq)
  #     GENSEQ_PORT=$(echo "$E" | cut -d' ' -f1)
  #     GENSEQ_CTRL=$(echo "$E" | cut -d' ' -f2)
  #     export GENSEQ_PORT
  #     export GENSEQ_CTRL
  #     ${synthesize}/bin/synthesize "$@"
  #     "$GENSEQ_CTRL" stop all
  #     "$GENSEQ_CTRL" shutdown
  #   '';
  # };

  interactive = writeShellApplication {
    name = "interactive";
    runtimeInputs = [ python solutions oeis_results sgenseq ];
    text = ''
      cd scripts
      E=$(sgenseq)
      GENSEQ_PORT=$(echo "$E" | cut -d' ' -f1)
      GENSEQ_CTRL=$(echo "$E" | cut -d' ' -f2)
      export GENSEQ_PORT
      export GENSEQ_CTRL
      export TEMPLATE_PATH=${./scripts}
      export SOLUTIONS_FILE_PATH=${solutions}/solutions
      export ALL_OEIS_RESULTS_FILE=${oeis_results}/oeis_results_all.json
      ipython --config=${./scripts/ipython_config.py}
      "$GENSEQ_CTRL" stop all
      "$GENSEQ_CTRL" shutdown
    '';
  };
in
interactive
