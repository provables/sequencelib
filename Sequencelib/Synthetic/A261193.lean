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
# A261193 sequence 
-/


namespace Sequence

@[OEIS := A261193, offset := 0, derive := true, maxIndex := 23]
def A261193 (x : ℕ) : ℤ :=
  (loop (λ (x y : ℤ) ↦ x * y) x 1 - 2)

end Sequence

