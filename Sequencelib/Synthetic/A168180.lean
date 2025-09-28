/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168180 sequence 
-/


namespace Sequence

@[OEIS := A168180, offset := 0, derive := true, maxIndex := 100]
def A168180 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x * x) * x) + loop (λ (x _y : ℤ) ↦ x * x) 2 (x * x)) / 2)

end Sequence

