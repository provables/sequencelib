/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022316 sequence 
-/


namespace Sequence

@[OEIS := A022316, offset := 0, derive := true, maxIndex := 100]
def A022316 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) x 1 (2 * (2 + 4)) - 1)

end Sequence

