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
# A090599 sequence 
-/


namespace Sequence

@[OEIS := A090599, offset := 1, derive := true, maxIndex := 10]
def A090599 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x * y) + x) (λ (_x y : ℤ) ↦ y) (loop (λ (x y : ℤ) ↦ x + y) x 1) 1 x

end Sequence

