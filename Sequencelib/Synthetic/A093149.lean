/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093149 sequence 
-/


namespace Sequence

@[OEIS := A093149, offset := 1, derive := true, maxIndex := 19]
def A093149 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 1 + ((x * y) + x)) (λ (_x y : ℤ) ↦ y) (1 + x) 1 x + 2)

end Sequence

