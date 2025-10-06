/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062873 sequence
-/

namespace Sequence

@[OEIS := A062873, offset := 0, maxIndex := 20, derive := true]
def A062873 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) + loop (λ (x y) ↦ x * y) x 1) / 2

end Sequence