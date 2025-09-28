/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170793 sequence 
-/


namespace Sequence

@[OEIS := A170793, offset := 0, derive := true, maxIndex := 100]
def A170793 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) x 0 * loop (λ (x _y : ℤ) ↦ (x * x) * x) 2 x)

end Sequence

