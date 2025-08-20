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
# A053611 sequence 
-/


namespace Sequence

@[OEIS := A053611, offset := 1, derive := true, maxIndex := 4]
def A053611 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x _y : ℤ) ↦ ((x * x) + x) * x) x 1 2 + x)

end Sequence

