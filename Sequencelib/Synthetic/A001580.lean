/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001580 sequence 
-/


namespace Sequence

@[OEIS := A001580, offset := 0, derive := true, maxIndex := 29]
def A001580 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) + loop (λ (x _y : ℤ) ↦ x + x) x 1)

end Sequence

