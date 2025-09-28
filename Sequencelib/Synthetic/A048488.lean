/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048488 sequence 
-/


namespace Sequence

@[OEIS := A048488, offset := 0, derive := true, maxIndex := 29]
def A048488 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) x 2 - 1)

end Sequence

