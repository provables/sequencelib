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
# A208901 sequence 
-/


namespace Sequence

@[OEIS := A208901, offset := 1, derive := true, maxIndex := 100]
def A208901 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x 2 - loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ x) x 2 2)

end Sequence

