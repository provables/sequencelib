/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093959 sequence 
-/


namespace Sequence

@[OEIS := A093959, offset := 0, derive := true, maxIndex := 7]
def A093959 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x _y : ℤ) ↦ 1 - ((x * x) + x)) x 2)

end Sequence

