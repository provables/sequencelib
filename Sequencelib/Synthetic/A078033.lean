/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078033 sequence 
-/


namespace Sequence

@[OEIS := A078033, offset := 0, derive := true, maxIndex := 100]
def A078033 (x : ℕ) : ℤ :=
  (loop2 (λ (x y : ℤ) ↦ (x - (y - 1)) - y) (λ (x _y : ℤ) ↦ x) x 1 1 - x % 2)

end Sequence

