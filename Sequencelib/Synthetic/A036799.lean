/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036799 sequence 
-/


namespace Sequence

@[OEIS := A036799, offset := 0, derive := true, maxIndex := 100]
def A036799 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ (x - 1) + x) x x)

end Sequence

