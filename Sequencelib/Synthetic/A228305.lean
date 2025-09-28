/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228305 sequence 
-/


namespace Sequence

@[OEIS := A228305, offset := 1, derive := true, maxIndex := 43]
def A228305 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ 2 + x) x 1 2) / 2) + 2)

end Sequence

