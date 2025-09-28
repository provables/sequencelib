/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162559 sequence 
-/


namespace Sequence

@[OEIS := A162559, offset := 0, derive := true, maxIndex := 29]
def A162559 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x + y) + y) + y) (λ (x y : ℤ) ↦ x + y) x 4 1

end Sequence

