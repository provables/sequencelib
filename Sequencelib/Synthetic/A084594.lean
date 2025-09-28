/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084594 sequence 
-/


namespace Sequence

@[OEIS := A084594, offset := 0, derive := true, maxIndex := 8]
def A084594 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ 2 * (x + y)) (loop (λ (x _y : ℤ) ↦ x + x) x 1) 1 1

end Sequence

