/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A049624 sequence 
-/

namespace Sequence

@[OEIS := A049624, offset := 0, derive := true, maxIndex := 67]
def A049624 (n : ℕ) : ℤ :=
  let x := n - 0
  ((if (x) ≤ 0 then (2) else (x) / 2) + x)


end Sequence
