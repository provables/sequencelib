/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117378 sequence 
-/


namespace Sequence

@[OEIS := A117378, offset := 0, derive := true, maxIndex := 74]
def A117378 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) x 1 4

end Sequence

