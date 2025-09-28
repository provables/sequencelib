/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117858 sequence 
-/


namespace Sequence

@[OEIS := A117858, offset := 1, derive := true, maxIndex := 30]
def A117858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) (x / 2) (1 + 4)

end Sequence

