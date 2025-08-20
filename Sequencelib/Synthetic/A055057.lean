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
# A055057 sequence 
-/


namespace Sequence

@[OEIS := A055057, offset := 5, derive := true, maxIndex := 5]
def A055057 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 - x) x y) x 1 + x * x) + 2)

end Sequence

