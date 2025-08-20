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
# A076860 sequence 
-/


namespace Sequence

@[OEIS := A076860, offset := 3, derive := true, maxIndex := 5]
def A076860 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) y 2 - x / y) x 0 + 1)

end Sequence

