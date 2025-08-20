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
# A001610 sequence 
-/


namespace Sequence

@[OEIS := A001610, offset := 0, derive := true, maxIndex := 100]
def A001610 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 2 - 1)

end Sequence

