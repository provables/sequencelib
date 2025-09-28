/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059919 sequence 
-/


namespace Sequence

@[OEIS := A059919, offset := 0, derive := true, maxIndex := 8]
def A059919 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ x * x) x 3)

end Sequence

