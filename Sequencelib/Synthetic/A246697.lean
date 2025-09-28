/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246697 sequence 
-/


namespace Sequence

@[OEIS := A246697, offset := 0, derive := true, maxIndex := 43]
def A246697 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop (λ (x y : ℤ) ↦ (2 + (x / y)) * x) 2 x) / (1 + x))

end Sequence

