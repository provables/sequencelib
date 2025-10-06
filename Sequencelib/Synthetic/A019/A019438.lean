/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A019438 sequence
-/

namespace Sequence

@[OEIS := A019438, offset := 0, maxIndex := 9, derive := true]
def A019438 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ ((y % 2) * y) + x) (λ (x _y) ↦ x) x 2 1 / 2) + 1) / 2) + x

end Sequence