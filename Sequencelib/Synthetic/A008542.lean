/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008542 sequence 
-/


namespace Sequence

@[OEIS := A008542, offset := 0, derive := true, maxIndex := 100]
def A008542 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ 2 + (2 + (2 + y))) x 1 1

end Sequence

