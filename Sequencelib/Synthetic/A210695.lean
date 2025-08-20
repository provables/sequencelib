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
# A210695 sequence 
-/


namespace Sequence

@[OEIS := A210695, offset := 0, derive := true, maxIndex := 50]
def A210695 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x y : ℤ) ↦ (x + y) + y) (x + x) 2 0 - 2)

end Sequence

