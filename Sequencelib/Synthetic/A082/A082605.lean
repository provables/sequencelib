/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082605 sequence
-/

namespace Sequence

@[OEIS := A082605, offset := 0, maxIndex := 100, derive := true]
def A082605 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ ((y % 2) + x) + x) (λ (_x _y) ↦ 0) x 2 x / 2) + 1

end Sequence