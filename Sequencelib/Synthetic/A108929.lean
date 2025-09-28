/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108929 sequence 
-/


namespace Sequence

@[OEIS := A108929, offset := 0, derive := true, maxIndex := 100]
def A108929 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((2 * ((x / 2) + x)) + x) + y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

