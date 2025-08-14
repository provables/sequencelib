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

# A028727 sequence 
-/

namespace Sequence

@[OEIS := A028727, offset := 1, derive := true, maxIndex := 6]
def A028727 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (2 + (2 + loop (λ(x y : ℤ) ↦ (y - x)) (x) (2)))) (x) (1) + 2)

end Sequence
