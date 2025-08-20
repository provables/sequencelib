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
# A260192 sequence 
-/


namespace Sequence

@[OEIS := A260192, offset := 0, derive := true, maxIndex := 100]
def A260192 (x : ℕ) : ℤ :=
  ((1 - (x % 3)) * loop (λ (x _y : ℤ) ↦ -x) (x / 2) 1)

end Sequence

