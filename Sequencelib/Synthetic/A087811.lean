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
# A087811 sequence 
-/


namespace Sequence

@[OEIS := A087811, offset := 1, derive := true, maxIndex := 100]
def A087811 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ (y / 2) + x) x x)

end Sequence

