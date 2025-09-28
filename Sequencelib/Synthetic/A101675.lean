/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101675 sequence 
-/


namespace Sequence

@[OEIS := A101675, offset := 0, derive := true, maxIndex := 100]
def A101675 (x : ℕ) : ℤ :=
  ((1 - (x % 3)) + loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) x 0 1)

end Sequence

