/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263013 sequence 
-/


namespace Sequence

@[OEIS := A263013, offset := 0, derive := true, maxIndex := 86]
def A263013 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ -(x / y)) x 1

end Sequence

