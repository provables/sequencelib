/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164033 sequence 
-/


namespace Sequence

@[OEIS := A164033, offset := 0, derive := true, maxIndex := 100]
def A164033 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) + y) (λ (x y : ℤ) ↦ (x + y) + y) x 2 1

end Sequence

