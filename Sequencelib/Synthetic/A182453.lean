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
# A182453 sequence 
-/


namespace Sequence

@[OEIS := A182453, offset := 0, derive := true, maxIndex := 34]
def A182453 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (x + x) + x) x 1 + loop (λ (x y : ℤ) ↦ x - y) x x)

end Sequence

