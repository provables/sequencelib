/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273935 sequence
-/

namespace Sequence

@[OEIS := A273935, offset := 0, maxIndex := 16, derive := true]
def A273935 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * (x * y)) y 1 + x * y) (x - 1) 1 * loop (λ (x y) ↦ x * y) x 1

end Sequence