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
# A086857 sequence 
-/


namespace Sequence

@[OEIS := A086857, offset := 0, derive := true, maxIndex := 9]
def A086857 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 1 + (y * y)) (λ (x y : ℤ) ↦ (y * y) + x) x 1 1 - 1)

end Sequence

