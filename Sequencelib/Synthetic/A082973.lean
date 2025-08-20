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
# A082973 sequence 
-/


namespace Sequence

@[OEIS := A082973, offset := 0, derive := true, maxIndex := 3]
def A082973 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (2 * loop (λ (x _y : ℤ) ↦ x * x) y x) - x) x 2 - x)

end Sequence

