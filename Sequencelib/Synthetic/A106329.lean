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
# A106329 sequence 
-/


namespace Sequence

@[OEIS := A106329, offset := 1, derive := true, maxIndex := 50]
def A106329 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (y - x) - x) (λ (x _y : ℤ) ↦ x) (x + x) 1 1 * 3)

end Sequence

