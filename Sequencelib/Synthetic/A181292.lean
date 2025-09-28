/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181292 sequence 
-/


namespace Sequence

@[OEIS := A181292, offset := 0, derive := true, maxIndex := 24]
def A181292 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ 2 * ((x - y) + x)) (λ (x _y : ℤ) ↦ x) x x 0 / 2) / 2)

end Sequence

