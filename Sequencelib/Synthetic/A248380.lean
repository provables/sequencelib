/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248380 sequence 
-/


namespace Sequence

@[OEIS := A248380, offset := 1, derive := true, maxIndex := 15]
def A248380 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (1 + loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x % 2) x 1 2) ≤ 0 then 1 else 2

end Sequence

