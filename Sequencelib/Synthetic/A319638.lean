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
# A319638 sequence 
-/


namespace Sequence

@[OEIS := A319638, offset := 0, derive := true, maxIndex := 11]
def A319638 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 1 / (1 + x))) / 2)

end Sequence

