/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023456 sequence 
-/


namespace Sequence

@[OEIS := A023456, offset := 0, derive := true, maxIndex := 61]
def A023456 (x : ℕ) : ℤ :=
  (2 + (x - loop (λ (x _y : ℤ) ↦ x * x) 2 2))

end Sequence

