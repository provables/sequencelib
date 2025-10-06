/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152110 sequence
-/

namespace Sequence

@[OEIS := A152110, offset := 0, maxIndex := 100, derive := true]
def A152110 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((y * y) + x) + y) ((x * 2) + 1) 0 - x) * 2

end Sequence