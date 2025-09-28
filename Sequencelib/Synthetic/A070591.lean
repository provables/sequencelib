/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070591 sequence 
-/


namespace Sequence

@[OEIS := A070591, offset := 0, derive := true, maxIndex := 83]
def A070591 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 2 x % loop (λ (x y : ℤ) ↦ (x + y) * x) 2 2)

end Sequence

