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
# A170216 sequence 
-/


namespace Sequence

@[OEIS := A170216, offset := 0, derive := true, maxIndex := 17]
def A170216 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x * x) 2 2 - y) * x) (λ (_x _y : ℤ) ↦ 2) x 1 1

end Sequence

