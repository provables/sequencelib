/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081179 sequence 
-/


namespace Sequence

@[OEIS := A081179, offset := 0, derive := true, maxIndex := 100]
def A081179 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x y : ℤ) ↦ (2 * (y + y)) + x) x 0 1

end Sequence

