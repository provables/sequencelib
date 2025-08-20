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
# A093138 sequence 
-/


namespace Sequence

@[OEIS := A093138, offset := 0, derive := true, maxIndex := 22]
def A093138 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (1 + (y + y)) * (x * y)) (λ (_x _y : ℤ) ↦ 2) x 1 1

end Sequence

