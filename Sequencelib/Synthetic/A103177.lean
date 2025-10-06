/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103177 sequence
-/

namespace Sequence

@[OEIS := A103177, offset := 0, maxIndex := 25, derive := true]
def A103177 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ ((x - (y - 1)) + x) + x) x 2

end Sequence