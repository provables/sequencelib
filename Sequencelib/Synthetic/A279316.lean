/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A279316 sequence 
-/


namespace Sequence

@[OEIS := A279316, offset := 0, derive := true, maxIndex := 86]
def A279316 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 + ((x / 2) * x)) - y) (λ (x _y : ℤ) ↦ x) x 0 1

end Sequence

