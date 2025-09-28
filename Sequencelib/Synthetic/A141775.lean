/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141775 sequence 
-/


namespace Sequence

@[OEIS := A141775, offset := 0, derive := true, maxIndex := 100]
def A141775 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x 1 + loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ y - x) x 0 1)

end Sequence

