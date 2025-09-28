/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005166 sequence 
-/


namespace Sequence

@[OEIS := A005166, offset := 0, derive := true, maxIndex := 10]
def A005166 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((1 + (((x * x) * x) - x)) / y) + x) x 1

end Sequence

