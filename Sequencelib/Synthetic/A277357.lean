/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277357 sequence 
-/


namespace Sequence

@[OEIS := A277357, offset := 1, derive := true, maxIndex := 15]
def A277357 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + ((2 * loop (λ (x _y : ℤ) ↦ x + x) y x) - x)) x 1

end Sequence

