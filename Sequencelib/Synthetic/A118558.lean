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
# A118558 sequence 
-/


namespace Sequence

@[OEIS := A118558, offset := 0, derive := true, maxIndex := 19]
def A118558 (x : ℕ) : ℤ :=
  (loop (λ (x _y : ℤ) ↦ x * x) 2 (1 - loop (λ (x _y : ℤ) ↦ x + x) x 1) - 2)

end Sequence

