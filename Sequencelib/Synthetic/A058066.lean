/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058066 sequence 
-/


namespace Sequence

@[OEIS := A058066, offset := 0, derive := true, maxIndex := 61]
def A058066 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x + x) / (1 + loop (λ (x _y : ℤ) ↦ x * x) 2 2)) + x) + x)

end Sequence

