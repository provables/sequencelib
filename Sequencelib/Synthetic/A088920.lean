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
# A088920 sequence 
-/


namespace Sequence

@[OEIS := A088920, offset := 1, derive := true, maxIndex := 15]
def A088920 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x - 1) + x) + y) (λ (x _y : ℤ) ↦ x) (2 * (x + x)) 2 1

end Sequence

