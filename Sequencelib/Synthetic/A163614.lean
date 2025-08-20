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
# A163614 sequence 
-/


namespace Sequence

@[OEIS := A163614, offset := 0, derive := true, maxIndex := 100]
def A163614 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * ((x + x) + y)) + x) (λ (x y : ℤ) ↦ y - x) x 1 2

end Sequence

