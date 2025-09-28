/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023474 sequence 
-/


namespace Sequence

@[OEIS := A023474, offset := 0, derive := true, maxIndex := 61]
def A023474 (x : ℕ) : ℤ :=
  (x - (2 * loop (λ (x _y : ℤ) ↦ x * x) 2 2))

end Sequence

