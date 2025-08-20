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
# A164544 sequence 
-/


namespace Sequence

@[OEIS := A164544, offset := 0, derive := true, maxIndex := 24]
def A164544 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * ((x + y) + y)) + x) (λ (x y : ℤ) ↦ x - y) x 1 1

end Sequence

