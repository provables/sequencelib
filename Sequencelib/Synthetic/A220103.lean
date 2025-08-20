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
# A220103 sequence 
-/


namespace Sequence

@[OEIS := A220103, offset := 1, derive := true, maxIndex := 5]
def A220103 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 2 * (x * y)) y 1 - x) x 0 / 2)

end Sequence

