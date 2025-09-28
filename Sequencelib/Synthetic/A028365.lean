/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028365 sequence 
-/


namespace Sequence

@[OEIS := A028365, offset := 0, derive := true, maxIndex := 100]
def A028365 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (y - 1) * (x * y)) (λ (_x y : ℤ) ↦ y + y) x 1 2

end Sequence

