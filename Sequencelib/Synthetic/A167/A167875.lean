/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167875 sequence
-/

namespace Sequence

@[OEIS := A167875, offset := 0, maxIndex := 42, derive := true]
def A167875 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ ((y * y) + x) + y) x x

end Sequence