/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169801 sequence
-/

namespace Sequence

@[OEIS := A169801, offset := 0, maxIndex := 31, derive := true]
def A169801 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ (y + x) - y * y) x 0)

end Sequence