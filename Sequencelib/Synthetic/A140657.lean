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
# A140657 sequence 
-/


namespace Sequence

@[OEIS := A140657, offset := 0, derive := true, maxIndex := 100]
def A140657 (x : ℕ) : ℤ :=
  (loop (λ (x _y : ℤ) ↦ x + x) x 1 + loop (λ (x _y : ℤ) ↦ -x) x 3)

end Sequence

