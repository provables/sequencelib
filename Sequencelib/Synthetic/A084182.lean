/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084182 sequence 
-/


namespace Sequence

@[OEIS := A084182, offset := 0, derive := true, maxIndex := 28]
def A084182 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + y)) + y) (λ (x _y : ℤ) ↦ (x % 2) + x) x 1 0

end Sequence

