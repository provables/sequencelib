/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A346311 sequence
-/

namespace Sequence

@[OEIS := A346311, offset := 1, maxIndex := 12, derive := true]
def A346311 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (x + y)) y x) x 1 / loop (λ (x _y) ↦ x * x) 2 2

end Sequence