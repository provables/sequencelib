/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062970 sequence
-/

namespace Sequence

@[OEIS := A062970, offset := 0, maxIndex := 48, derive := true]
def A062970 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) y 1 y) x 1

end Sequence