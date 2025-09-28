/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152224 sequence 
-/


namespace Sequence

@[OEIS := A152224, offset := 0, derive := true, maxIndex := 100]
def A152224 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((2 * (x + x)) + x) + y) (λ (x y : ℤ) ↦ x - y) x 1 1

end Sequence

