/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060946 sequence 
-/


namespace Sequence

@[OEIS := A060946, offset := 1, derive := true, maxIndex := 10]
def A060946 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (x * y) + x) (λ (_x y : ℤ) ↦ y) y 1 y + x) x 1

end Sequence

