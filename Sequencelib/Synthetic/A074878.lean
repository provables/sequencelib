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
# A074878 sequence 
-/


namespace Sequence

@[OEIS := A074878, offset := 1, derive := true, maxIndex := 10]
def A074878 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) y 2 0 + x) + x) x 1

end Sequence

