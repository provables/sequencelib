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
# A131508 sequence 
-/


namespace Sequence

@[OEIS := A131508, offset := 0, derive := true, maxIndex := 100]
def A131508 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (y / (2 - (x % 2))) + x % 2) x 0 / 2)

end Sequence

