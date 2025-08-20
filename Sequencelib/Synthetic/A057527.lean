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
# A057527 sequence 
-/


namespace Sequence

@[OEIS := A057527, offset := 0, derive := true, maxIndex := 8]
def A057527 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x * y) y x) y x) y x) x 1

end Sequence

