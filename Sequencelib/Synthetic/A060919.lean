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
# A060919 sequence 
-/


namespace Sequence

@[OEIS := A060919, offset := 1, derive := true, maxIndex := 100]
def A060919 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (y * (1 + y)) + x) (λ (_x y : ℤ) ↦ y + y) x 2 1 * 2)

end Sequence

