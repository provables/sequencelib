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
# A277345 sequence 
-/


namespace Sequence

@[OEIS := A277345, offset := 0, derive := true, maxIndex := 22]
def A277345 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) y 2 1 + x * y) x 2

end Sequence

