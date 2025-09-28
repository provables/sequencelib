/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096886 sequence 
-/


namespace Sequence

@[OEIS := A096886, offset := 0, derive := true, maxIndex := 27]
def A096886 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ (2 * (x * 2)) * 2) x 1 3

end Sequence

