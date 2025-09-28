/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002064 sequence 
-/


namespace Sequence

@[OEIS := A002064, offset := 0, derive := true, maxIndex := 100]
def A002064 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ x + x) x x)

end Sequence

