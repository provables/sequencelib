/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099450 sequence 
-/


namespace Sequence

@[OEIS := A099450, offset := 0, derive := true, maxIndex := 29]
def A099450 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ ((x + x) + x) + y) (λ (x y : ℤ) ↦ (y - x) + y) x 1 2

end Sequence

