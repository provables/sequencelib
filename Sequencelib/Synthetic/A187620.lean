/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187620 sequence 
-/


namespace Sequence

@[OEIS := A187620, offset := 0, derive := true, maxIndex := 100]
def A187620 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((loop (λ (x _y : ℤ) ↦ x * x) 2 y * y) * y) - x) x 1

end Sequence

