/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036605 sequence 
-/


namespace Sequence

@[OEIS := A036605, offset := 0, derive := true, maxIndex := 36]
def A036605 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 1 / 2) * 3) + 1)

end Sequence

