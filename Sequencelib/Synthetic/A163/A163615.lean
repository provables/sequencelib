/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163615 sequence
-/

namespace Sequence

@[OEIS := A163615, offset := 0, maxIndex := 100, derive := true]
def A163615 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x + x) + y)) + x) + x) (λ (x y) ↦ (y - x) + y) x 1 2

end Sequence