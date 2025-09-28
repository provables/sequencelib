/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057581 sequence 
-/


namespace Sequence

@[OEIS := A057581, offset := 0, derive := true, maxIndex := 5]
def A057581 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((((y * y) * y) - x) / 2) + x) x x + 2)

end Sequence

