/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053347 sequence
-/

namespace Sequence

@[OEIS := A053347, offset := 0, maxIndex := 100, derive := true]
def A053347 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x 1 - 1) + 1) * (loop (λ (x _y) ↦ x + 1) 2 2 + x)) + 1) + 2) /
  4

end Sequence