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
# A156189 sequence 
-/


namespace Sequence

@[OEIS := A156189, offset := 0, derive := true, maxIndex := 100]
def A156189 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) x 1 / (1 + (x % 2)))

end Sequence

