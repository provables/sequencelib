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
# A205219 sequence 
-/


namespace Sequence

@[OEIS := A205219, offset := 1, derive := true, maxIndex := 100]
def A205219 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 2 * (x + y)) (λ (x y : ℤ) ↦ x - y) x 4 1 * 2)

end Sequence

