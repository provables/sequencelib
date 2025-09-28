/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282598 sequence 
-/


namespace Sequence

@[OEIS := A282598, offset := 1, derive := true, maxIndex := 5]
def A282598 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (_x y : ℤ) ↦ 2 * (y + y)) (λ (x _y : ℤ) ↦ x) x 1 2 / 2) + 1) + 2)

end Sequence

