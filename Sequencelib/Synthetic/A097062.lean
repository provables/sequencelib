/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097062 sequence 
-/


namespace Sequence

@[OEIS := A097062, offset := 0, derive := true, maxIndex := 100]
def A097062 (x : ℕ) : ℤ :=
  ((loop (λ (x _y : ℤ) ↦ 1 - x) x 2 - 1) + x)

end Sequence

