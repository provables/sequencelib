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
# A141415 sequence 
-/


namespace Sequence

@[OEIS := A141415, offset := 0, derive := true, maxIndex := 5]
def A141415 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ ((y * y) / 2) + x) x y) x 1 - x)

end Sequence

