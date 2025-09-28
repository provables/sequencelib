/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106252 sequence 
-/


namespace Sequence

@[OEIS := A106252, offset := 1, derive := true, maxIndex := 67]
def A106252 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 - (loop (λ (x y : ℤ) ↦ y - x) x 1 / 3)) + x) + x)

end Sequence

