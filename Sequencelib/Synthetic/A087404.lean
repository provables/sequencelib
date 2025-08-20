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
# A087404 sequence 
-/


namespace Sequence

@[OEIS := A087404, offset := 0, derive := true, maxIndex := 100]
def A087404 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ ((2 * (x + y)) * 2) + x) x 1 2 * 2)

end Sequence

