/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159964 sequence 
-/


namespace Sequence

@[OEIS := A159964, offset := 0, derive := true, maxIndex := 28]
def A159964 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ x + x) x (1 - x)

end Sequence

