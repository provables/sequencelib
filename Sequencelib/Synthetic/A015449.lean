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
# A015449 sequence 
-/


namespace Sequence

@[OEIS := A015449, offset := 0, derive := true, maxIndex := 100]
def A015449 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ ((2 * (y + y)) + x) + y) x 1 1

end Sequence

