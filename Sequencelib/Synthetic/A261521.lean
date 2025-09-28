/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261521 sequence 
-/


namespace Sequence

@[OEIS := A261521, offset := 0, derive := true, maxIndex := 50]
def A261521 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + ((2 + x) * x)) + loop (λ (x y : ℤ) ↦ (x * x) + y) 2 2)

end Sequence

