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
# A263430 sequence 
-/


namespace Sequence

@[OEIS := A263430, offset := 0, derive := true, maxIndex := 11]
def A263430 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x - 1) + x) 2 y * x) y x) x 1

end Sequence

