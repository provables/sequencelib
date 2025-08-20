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
# A137344 sequence 
-/


namespace Sequence

@[OEIS := A137344, offset := 0, derive := true, maxIndex := 30]
def A137344 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x + x) x (2 + (x % 2)) / 2) * 3)

end Sequence

