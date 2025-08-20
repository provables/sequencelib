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
# A058581 sequence 
-/


namespace Sequence

@[OEIS := A058581, offset := 0, derive := true, maxIndex := 31]
def A058581 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ (2 * (x * x)) - 1) 2 x / 3) + x)

end Sequence

