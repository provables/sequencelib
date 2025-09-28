/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168233 sequence 
-/


namespace Sequence

@[OEIS := A168233, offset := 1, derive := true, maxIndex := 100]
def A168233 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x + loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x _y : ℤ) ↦ x) x 1 2)

end Sequence

