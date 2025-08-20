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
# A059232 sequence 
-/


namespace Sequence

@[OEIS := A059232, offset := 1, derive := true, maxIndex := 4]
def A059232 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + (loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 x + y)) x 1

end Sequence

