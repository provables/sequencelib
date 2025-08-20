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
# A170451 sequence 
-/


namespace Sequence

@[OEIS := A170451, offset := 0, derive := true, maxIndex := 19]
def A170451 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((2 * 4) + y) * x) (λ (_x _y : ℤ) ↦ 1) x 1 2

end Sequence

