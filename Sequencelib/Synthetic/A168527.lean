/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168527 sequence 
-/


namespace Sequence

@[OEIS := A168527, offset := 0, derive := true, maxIndex := 50]
def A168527 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) * loop (λ (x y : ℤ) ↦ x + y) x 0) 1 (x * x)

end Sequence

