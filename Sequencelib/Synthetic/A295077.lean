/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295077 sequence 
-/


namespace Sequence

@[OEIS := A295077, offset := 0, derive := true, maxIndex := 100]
def A295077 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 * ((x * x) - x)) - 1) + loop (λ (x _y : ℤ) ↦ x + x) x 1)

end Sequence

