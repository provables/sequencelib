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
# A132592 sequence 
-/


namespace Sequence

@[OEIS := A132592, offset := 0, derive := true, maxIndex := 10]
def A132592 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (y - x) - x) (λ (x _y : ℤ) ↦ x) (2 * (x + x)) 1 1 / 2)

end Sequence

