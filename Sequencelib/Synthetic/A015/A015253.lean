/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015253 sequence
-/

namespace Sequence

@[OEIS := A015253, offset := 2, maxIndex := 100, derive := true]
def A015253 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + (loop (λ (x _y) ↦ x * x) 2 2 * x)) y 1 - (x + x) * 2) x 1

end Sequence