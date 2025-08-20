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
# A198297 sequence 
-/


namespace Sequence

@[OEIS := A198297, offset := 0, derive := true, maxIndex := 4]
def A198297 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x * y) x x - x % 2)

end Sequence

