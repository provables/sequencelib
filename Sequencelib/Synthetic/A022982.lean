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
# A022982 sequence 
-/


namespace Sequence

@[OEIS := A022982, offset := 0, derive := true, maxIndex := 61]
def A022982 (x : ℕ) : ℤ :=
  (loop (λ (x _y : ℤ) ↦ 1 + (x * x)) 2 2 - x)

end Sequence

