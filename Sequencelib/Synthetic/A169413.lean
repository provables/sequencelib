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
# A169413 sequence 
-/


namespace Sequence

@[OEIS := A169413, offset := 0, derive := true, maxIndex := 17]
def A169413 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x * x) 2 2 - 1 % x) * x) x 1

end Sequence

