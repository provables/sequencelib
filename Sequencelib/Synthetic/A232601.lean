/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A232601 sequence 
-/


namespace Sequence

@[OEIS := A232601, offset := 0, derive := true, maxIndex := 50]
def A232601 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ -(x + x)) y y * y) + x) x 0

end Sequence

