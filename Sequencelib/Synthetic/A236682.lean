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
# A236682 sequence 
-/


namespace Sequence

@[OEIS := A236682, offset := 1, derive := true, maxIndex := 10]
def A236682 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (_x y : ℤ) ↦ y / 2) (λ (x y : ℤ) ↦ x + y) x 1 1 / 2) + 1) + 2)

end Sequence

