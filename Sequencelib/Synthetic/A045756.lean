/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A045756 sequence 
-/


namespace Sequence

@[OEIS := A045756, offset := 0, derive := true, maxIndex := 100]
def A045756 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ ((x - 2) + x) + x) 2 y * x) x 1

end Sequence

