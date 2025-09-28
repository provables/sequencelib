/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255463 sequence 
-/


namespace Sequence

@[OEIS := A255463, offset := 0, derive := true, maxIndex := 27]
def A255463 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) + y) (λ (_x y : ℤ) ↦ (y + y) + y) x 1 2

end Sequence

