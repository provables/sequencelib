/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170644 sequence 
-/


namespace Sequence

@[OEIS := A170644, offset := 0, derive := true, maxIndex := 18]
def A170644 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 * ((2 * (x + x)) + x)) + 1 / x) x 1

end Sequence

