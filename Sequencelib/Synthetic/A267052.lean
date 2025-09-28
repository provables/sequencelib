/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267052 sequence 
-/


namespace Sequence

@[OEIS := A267052, offset := 0, derive := true, maxIndex := 100]
def A267052 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (x + y) + y) (λ (x _y : ℤ) ↦ x) y 2 0) x 0 + 1)

end Sequence

