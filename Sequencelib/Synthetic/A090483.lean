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
# A090483 sequence 
-/


namespace Sequence

@[OEIS := A090483, offset := 1, derive := true, maxIndex := 7]
def A090483 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ ((x / 2) - x) / 2) x x 0 + 1)

end Sequence

