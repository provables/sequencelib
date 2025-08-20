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
# A001045 sequence 
-/


namespace Sequence

@[OEIS := A001045, offset := 0, derive := true, maxIndex := 100]
def A001045 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x + x) x 0 1

end Sequence

