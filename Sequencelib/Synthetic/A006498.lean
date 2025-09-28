/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006498 sequence 
-/


namespace Sequence

@[OEIS := A006498, offset := 0, derive := true, maxIndex := 100]
def A006498 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (((x % 2) - 1) + x) + y) (λ (x _y : ℤ) ↦ x) x 2 1 / 2)

end Sequence

