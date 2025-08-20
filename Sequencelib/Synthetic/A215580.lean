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
# A215580 sequence 
-/


namespace Sequence

@[OEIS := A215580, offset := 0, derive := true, maxIndex := 50]
def A215580 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ 1 + x) (x + x) 2 1 - x % 2)

end Sequence

