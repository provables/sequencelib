/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343165 sequence 
-/


namespace Sequence

@[OEIS := A343165, offset := 4, derive := true, maxIndex := 5]
def A343165 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y / 2) + y) * x) x 1 + ((x * x) - x))

end Sequence

