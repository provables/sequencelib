/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191272 sequence 
-/


namespace Sequence

@[OEIS := A191272, offset := 0, derive := true, maxIndex := 24]
def A191272 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x + x) (x + x) 1 - 1) + x % 3)

end Sequence

