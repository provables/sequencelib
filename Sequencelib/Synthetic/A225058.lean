/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225058 sequence 
-/


namespace Sequence

@[OEIS := A225058, offset := 0, derive := true, maxIndex := 100]
def A225058 (x : ℕ) : ℤ :=
  ((loop (λ (x _y : ℤ) ↦ 2 + (x / (2 - (x % 2)))) 2 x - 2) - 2)

end Sequence

