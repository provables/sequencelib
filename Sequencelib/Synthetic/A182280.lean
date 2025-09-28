/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182280 sequence 
-/


namespace Sequence

@[OEIS := A182280, offset := 0, derive := true, maxIndex := 100]
def A182280 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ ((1 + (x / 2)) / 2) + y) (λ (x _y : ℤ) ↦ x) x 1 2 + 2)

end Sequence

