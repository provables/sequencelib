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
# A318236 sequence 
-/


namespace Sequence

@[OEIS := A318236, offset := 0, derive := true, maxIndex := 100]
def A318236 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 - (2 * (x + x))) (2 + (x + x)) 1 / 2)

end Sequence

