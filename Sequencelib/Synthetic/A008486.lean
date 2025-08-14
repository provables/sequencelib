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

# A008486 sequence 
-/

namespace Sequence

@[OEIS := A008486, offset := 0, derive := true, maxIndex := 100]
def A008486 (n : ℕ) : ℤ :=
  let x := n - 0
  ((if (x) ≤ 0 then (1) else (x) + x) + x)

end Sequence
