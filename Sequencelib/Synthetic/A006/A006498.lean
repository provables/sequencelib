/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006498 sequence
-/

namespace Sequence

@[OEIS := A006498, offset := 0, maxIndex := 100, derive := true]
def A006498 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x % 2) - 1) + x) + y) (λ (x _y) ↦ x) x 2 1 / 2

end Sequence