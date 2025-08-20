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
# A309472 sequence 
-/


namespace Sequence

@[OEIS := A309472, offset := 0, derive := true, maxIndex := 20]
def A309472 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 x - loop (λ (x y : ℤ) ↦ x * y) x x)

end Sequence

