/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000023 sequence 
-/


namespace Sequence

@[OEIS := A000023, offset := 0, derive := true, maxIndex := 50]
def A000023 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ -(x + x)) y 1 + x * y) x 1

end Sequence

