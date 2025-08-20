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
# A182895 sequence 
-/


namespace Sequence

@[OEIS := A182895, offset := 0, derive := true, maxIndex := 29]
def A182895 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (x + x) 1 2 / 2)) / 2)

end Sequence

