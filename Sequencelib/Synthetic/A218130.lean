/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218130 sequence 
-/


namespace Sequence

@[OEIS := A218130, offset := 0, derive := true, maxIndex := 100]
def A218130 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x _y : ℤ) ↦ x * x) 2 x - 1) - x) * (x * x)) + x)

end Sequence

