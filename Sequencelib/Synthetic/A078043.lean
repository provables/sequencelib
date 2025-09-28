/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078043 sequence 
-/


namespace Sequence

@[OEIS := A078043, offset := 0, derive := true, maxIndex := 10]
def A078043 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ (loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) y 1 1 - x) - x) x 1

end Sequence

