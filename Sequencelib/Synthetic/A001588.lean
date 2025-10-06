/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001588 sequence
-/

namespace Sequence

@[OEIS := A001588, offset := 0, maxIndex := 100, derive := true]
def A001588 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 2

end Sequence