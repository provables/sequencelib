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
# A131358 sequence 
-/


namespace Sequence

@[OEIS := A131358, offset := 0, derive := true, maxIndex := 50]
def A131358 (x : ℕ) : ℤ :=
  (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ 2 - x) (x * 2) 1 x / 3)

end Sequence

