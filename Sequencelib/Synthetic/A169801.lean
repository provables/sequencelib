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
# A169801 sequence 
-/


namespace Sequence

@[OEIS := A169801, offset := 0, derive := true, maxIndex := 32]
def A169801 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x y : ℤ) ↦ (y + x) - y * y) x 0)

end Sequence

