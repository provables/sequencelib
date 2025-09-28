/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335298 sequence 
-/


namespace Sequence

@[OEIS := A335298, offset := 0, derive := true, maxIndex := 55]
def A335298 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x * x) 1 (((x / 2) % 2) + x) + 1) / 2)

end Sequence

