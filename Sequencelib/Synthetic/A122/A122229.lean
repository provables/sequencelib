/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122229 sequence
-/

namespace Sequence

@[OEIS := A122229, offset := 0, maxIndex := 22, derive := true]
def A122229 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ (2 * (x + y)) + y) x 1 4 + 1) / 2) + 1) / 2) * 2) - 2

end Sequence