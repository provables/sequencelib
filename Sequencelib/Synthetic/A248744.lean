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
# A248744 sequence 
-/


namespace Sequence

@[OEIS := A248744, offset := 0, derive := true, maxIndex := 20]
def A248744 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 2 x - loop (λ (x y : ℤ) ↦ x * y) x 1)

end Sequence

