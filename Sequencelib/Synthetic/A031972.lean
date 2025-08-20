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
# A031972 sequence 
-/


namespace Sequence

@[OEIS := A031972, offset := 0, derive := true, maxIndex := 100]
def A031972 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x * y) + y) (λ (_x y : ℤ) ↦ y) x 0 x

end Sequence

