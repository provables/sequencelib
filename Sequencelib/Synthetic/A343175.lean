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
# A343175 sequence 
-/


namespace Sequence

@[OEIS := A343175, offset := 0, derive := true, maxIndex := 100]
def A343175 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 2 * ((1 + y) * y)) (λ (_x y : ℤ) ↦ 2 * y) x 1 1 + 1)

end Sequence

