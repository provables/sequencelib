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
# A022342 sequence 
-/


namespace Sequence

@[OEIS := A022342, offset := 1, derive := true, maxIndex := 100]
def A022342 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 - 1)

end Sequence

