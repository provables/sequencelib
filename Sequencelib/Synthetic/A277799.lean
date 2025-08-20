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
# A277799 sequence 
-/


namespace Sequence

@[OEIS := A277799, offset := 0, derive := true, maxIndex := 100]
def A277799 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 2) ≤ 0 then 1 else loop (λ (x _y : ℤ) ↦ x + x) x 2 - 4

end Sequence

