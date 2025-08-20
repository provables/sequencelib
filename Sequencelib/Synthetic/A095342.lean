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
# A095342 sequence 
-/


namespace Sequence

@[OEIS := A095342, offset := 1, derive := true, maxIndex := 10]
def A095342 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (x + y) + y) (λ (x _y : ℤ) ↦ x) y 2 0 - x) x 1

end Sequence

