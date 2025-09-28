/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004971 sequence 
-/


namespace Sequence

@[OEIS := A004971, offset := 0, derive := true, maxIndex := 29]
def A004971 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + loop (λ (x _y : ℤ) ↦ (2 + (2 + x)) * x) 3 1) * x)

end Sequence

