/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282822 sequence 
-/


namespace Sequence

@[OEIS := A282822, offset := 0, derive := true, maxIndex := 22]
def A282822 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ x * y) x ((x - 2) - 2)

end Sequence

