/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089499 sequence 
-/


namespace Sequence

@[OEIS := A089499, offset := 0, derive := true, maxIndex := 30]
def A089499 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 - (x % 2)) * loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x 0 1)

end Sequence

