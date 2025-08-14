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

# A109046 sequence 
-/

namespace Sequence

@[OEIS := A109046, offset := 0, derive := true, maxIndex := 100]
def A109046 (n : ℕ) : ℤ :=
  let x := n - 0
  (((2 * if ((x % (1 + (2 + 2)))) ≤ 0 then (0) else (2)) * x) + x)

end Sequence
