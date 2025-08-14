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

# A131119 sequence 
-/

namespace Sequence

@[OEIS := A131119, offset := 0, derive := true, maxIndex := 55]
def A131119 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((1 + (y % 2)) * y) - x)) ((1 + x)) (1) / 2)

end Sequence
