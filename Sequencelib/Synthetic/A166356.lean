/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166356 sequence
-/

namespace Sequence

@[OEIS := A166356, offset := 0, maxIndex := 15, derive := true]
def A166356 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) ((x - 2) + x) 1 * loop (λ (_x y) ↦ (y) + y) x 1

end Sequence