/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307465 sequence 
-/


namespace Sequence

@[OEIS := A307465, offset := 0, derive := true, maxIndex := 31]
def A307465 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x 1 0 - x) / 2) + 1)

end Sequence

