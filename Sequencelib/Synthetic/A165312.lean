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
# A165312 sequence 
-/


namespace Sequence

@[OEIS := A165312, offset := 0, derive := true, maxIndex := 50]
def A165312 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ (2 * (y + y)) + y) (λ (x y : ℤ) ↦ x + y) (x + x) 1 0

end Sequence

