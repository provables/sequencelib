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
# A082464 sequence 
-/


namespace Sequence

@[OEIS := A082464, offset := 1, derive := true, maxIndex := 7]
def A082464 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x y : ℤ) ↦ (y * y) * x) (x / 3) x) + 2)

end Sequence

