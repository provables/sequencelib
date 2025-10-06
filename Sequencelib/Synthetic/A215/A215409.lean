/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215409 sequence
-/

namespace Sequence

@[OEIS := A215409, offset := 0, maxIndex := 5, derive := true]
def A215409 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 - comprN (λ (x : ℤ) ↦ 0) (x - 2))

end Sequence