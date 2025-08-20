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
# A212310 sequence 
-/


namespace Sequence

@[OEIS := A212310, offset := 0, derive := true, maxIndex := 100]
def A212310 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x * y) x 1 % loop (λ (x _y : ℤ) ↦ x + x) (x + x) 1)

end Sequence

