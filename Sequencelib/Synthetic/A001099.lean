/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A001099 sequence 
-/


namespace Sequence

@[OEIS := A001099, offset := 1, derive := true, maxIndex := 10]
def A001099 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) y 1 y - x) (1 + x) 0

end Sequence

