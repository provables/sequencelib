/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165622 sequence 
-/


namespace Sequence

@[OEIS := A165622, offset := 0, derive := true, maxIndex := 25]
def A165622 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ 2 * (2 * (2 - x))) x 1

end Sequence

