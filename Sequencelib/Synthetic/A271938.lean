/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271938 sequence 
-/


namespace Sequence

@[OEIS := A271938, offset := 1, derive := true, maxIndex := 6]
def A271938 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x + x) + x) y 1) (λ (x y : ℤ) ↦ x * y) x 1 1

end Sequence

