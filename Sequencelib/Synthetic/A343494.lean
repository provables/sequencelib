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
# A343494 sequence 
-/


namespace Sequence

@[OEIS := A343494, offset := 1, derive := true, maxIndex := 5]
def A343494 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) x 1) x 1 + if (x - 1) ≤ 0 then 1 else 0)

end Sequence

