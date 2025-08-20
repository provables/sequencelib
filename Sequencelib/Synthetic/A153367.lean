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
# A153367 sequence 
-/


namespace Sequence

@[OEIS := A153367, offset := 1, derive := true, maxIndex := 24]
def A153367 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) - y) (λ (x y : ℤ) ↦ x + y) x 2 1)

end Sequence

