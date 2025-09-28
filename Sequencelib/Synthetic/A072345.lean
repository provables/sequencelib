/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072345 sequence 
-/


namespace Sequence

@[OEIS := A072345, offset := 0, derive := true, maxIndex := 56]
def A072345 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (y / x) + y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

