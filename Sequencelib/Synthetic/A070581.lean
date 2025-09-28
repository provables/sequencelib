/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070581 sequence 
-/


namespace Sequence

@[OEIS := A070581, offset := 0, derive := true, maxIndex := 79]
def A070581 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 2 x % loop (λ (x _y : ℤ) ↦ 2 + (x * x)) 2 2)

end Sequence

