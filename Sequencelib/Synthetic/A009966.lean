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
# A009966 sequence 
-/


namespace Sequence

@[OEIS := A009966, offset := 0, derive := true, maxIndex := 100]
def A009966 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ x * y) 4 x - x) - x) x 1

end Sequence

