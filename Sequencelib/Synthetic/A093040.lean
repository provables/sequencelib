/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093040 sequence
-/

namespace Sequence

@[OEIS := A093040, offset := 0, maxIndex := 50, derive := true]
def A093040 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x % 2) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 1 1) x 2 / 2

end Sequence