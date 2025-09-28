/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005701 sequence 
-/


namespace Sequence

@[OEIS := A005701, offset := 0, derive := true, maxIndex := 50]
def A005701 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ ((2 + y) * y) + x) y x) (1 + x) 0

end Sequence

