/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078020 sequence 
-/


namespace Sequence

@[OEIS := A078020, offset := 0, derive := true, maxIndex := 100]
def A078020 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x y : ℤ) ↦ y - x) x 1 0

end Sequence

