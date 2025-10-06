/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182281 sequence
-/

namespace Sequence

@[OEIS := A182281, offset := 0, maxIndex := 54, derive := true]
def A182281 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 + x) / 3) + y) (λ (x _y) ↦ x) x 0 1 + 2

end Sequence