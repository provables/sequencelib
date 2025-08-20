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
# A049209 sequence 
-/


namespace Sequence

@[OEIS := A049209, offset := 0, derive := true, maxIndex := 100]
def A049209 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((1 + (2 + 4)) * (x * y)) - x) x 1

end Sequence

