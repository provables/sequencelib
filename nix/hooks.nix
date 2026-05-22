{ makeSetupHook, rsync, cache, ... }:
 makeSetupHook {
    name = "use sequencelib cache hook";
    propagatedBuildInputs = [ rsync ];
    substitutions = {
      cache = "${cache}";
    };
  } ./cacheHook.sh