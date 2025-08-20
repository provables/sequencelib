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
# A131017 sequence 
-/


namespace Sequence

@[OEIS := A131017, offset := 0, derive := true, maxIndex := 100]
def A131017 (x : ℕ) : ℤ :=
  (loop (λ (_x _y : ℤ) ↦ 2) (x % 3) (1 - (x % 2)) - x % 2)

end Sequence

