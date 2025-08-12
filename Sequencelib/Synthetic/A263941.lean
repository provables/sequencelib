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

# A263941 sequence 
-/

namespace Sequence

@[OEIS := A263941, offset := 1, derive := true, maxIndex := 50]
def A263941 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((x + x) + x)) (if (x) ≤ 0 then (1) else (2)) ((1 + x)) / 2)

end Sequence
