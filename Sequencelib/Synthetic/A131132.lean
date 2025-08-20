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
# A131132 sequence 
-/


namespace Sequence

@[OEIS := A131132, offset := 0, derive := true, maxIndex := 40]
def A131132 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (loop2 (λ (x y : ℤ) ↦ 1 + (x + y)) (λ (x _y : ℤ) ↦ x) x 2 1 / 2)) / 2)

end Sequence

