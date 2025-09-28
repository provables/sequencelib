/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015540 sequence 
-/


namespace Sequence

@[OEIS := A015540, offset := 0, derive := true, maxIndex := 24]
def A015540 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y - x) (λ (_x y : ℤ) ↦ 2 * ((y + y) + y)) x 0 1

end Sequence

