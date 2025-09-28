/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A202151 sequence 
-/


namespace Sequence

@[OEIS := A202151, offset := 2, derive := true, maxIndex := 6]
def A202151 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((1 + loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x _y : ℤ) ↦ x) x 2 x) / 2) + 1) + 2)

end Sequence

