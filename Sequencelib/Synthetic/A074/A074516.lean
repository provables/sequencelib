/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074516 sequence
-/

namespace Sequence

@[OEIS := A074516, offset := 0, maxIndex := 100, derive := true]
def A074516 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x + x)) + x) + y) (λ (_x y) ↦ 2 * ((y + y) + y)) x 2 1 + 1

end Sequence