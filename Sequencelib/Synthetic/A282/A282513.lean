/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282513 sequence
-/

namespace Sequence

@[OEIS := A282513, offset := 0, maxIndex := 100, derive := true]
def A282513 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x - (y / 2)) + y) + y) x 1 / 2

end Sequence