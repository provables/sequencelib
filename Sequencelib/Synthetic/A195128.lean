/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195128 sequence 
-/


namespace Sequence

@[OEIS := A195128, offset := 0, derive := true, maxIndex := 100]
def A195128 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((y * y) / ((2 + (x * x)) / 2)) + x) x x

end Sequence

