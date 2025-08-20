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
# A000774 sequence 
-/


namespace Sequence

@[OEIS := A000774, offset := 0, derive := true, maxIndex := 50]
def A000774 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ x * y) y 1 / y) + x * y) x 1

end Sequence

