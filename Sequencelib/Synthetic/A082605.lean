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
# A082605 sequence 
-/


namespace Sequence

@[OEIS := A082605, offset := 0, derive := true, maxIndex := 100]
def A082605 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ ((y % 2) + x) + x) (λ (_x _y : ℤ) ↦ 0) x 2 x / 2) + 1)

end Sequence

