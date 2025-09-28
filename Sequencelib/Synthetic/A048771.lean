/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048771 sequence 
-/


namespace Sequence

@[OEIS := A048771, offset := 0, derive := true, maxIndex := 29]
def A048771 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 1 + ((2 * (2 + x)) + y)) (λ (x _y : ℤ) ↦ x) x 2 1 - 1)

end Sequence

