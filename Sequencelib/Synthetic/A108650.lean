/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108650 sequence
-/

namespace Sequence

@[OEIS := A108650, offset := 0, maxIndex := 100, derive := true]
def A108650 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((1 + y) * (y * y)) + x) (1 + x) 0 * (1 + x)) / 2

end Sequence