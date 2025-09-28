/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198687 sequence 
-/


namespace Sequence

@[OEIS := A198687, offset := 0, derive := true, maxIndex := 100]
def A198687 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ (3 * (1 + (x + x))) + x) x 2)

end Sequence

