/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048721 sequence 
-/


namespace Sequence

@[OEIS := A048721, offset := 0, derive := true, maxIndex := 13]
def A048721 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x * y) (λ (x _y : ℤ) ↦ x) y 2 1 + x) x 0 / 2)

end Sequence

