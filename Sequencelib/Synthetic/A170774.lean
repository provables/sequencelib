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
# A170774 sequence 
-/


namespace Sequence

@[OEIS := A170774, offset := 0, derive := true, maxIndex := 100]
def A170774 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + (x * x)) * loop (λ (x _y : ℤ) ↦ x * x) 2 (x * x)) / 2)

end Sequence

