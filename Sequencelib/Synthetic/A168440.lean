/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168440 sequence 
-/


namespace Sequence

@[OEIS := A168440, offset := 0, derive := true, maxIndex := 8]
def A168440 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 * (x * y)) - x) (y + y) x) x 1

end Sequence

