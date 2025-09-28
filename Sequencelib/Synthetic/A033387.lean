/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033387 sequence 
-/


namespace Sequence

@[OEIS := A033387, offset := 1, derive := true, maxIndex := 92]
def A033387 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) x 1) 2 4 / (1 + x))

end Sequence

