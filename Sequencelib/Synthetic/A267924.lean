/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267924 sequence 
-/


namespace Sequence

@[OEIS := A267924, offset := 0, derive := true, maxIndex := 100]
def A267924 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y : ℤ) ↦ (y * y) - 2) (λ (_x y : ℤ) ↦ y + y) x 1 2 * 2) - 1)

end Sequence

