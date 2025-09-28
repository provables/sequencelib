/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293642 sequence 
-/


namespace Sequence

@[OEIS := A293642, offset := 0, derive := true, maxIndex := 100]
def A293642 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x y : ℤ) ↦ x + y) x 0 2 / ((2 * 2) + 1))

end Sequence

