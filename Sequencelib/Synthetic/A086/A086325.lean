/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086325 sequence
-/

namespace Sequence

@[OEIS := A086325, offset := 1, maxIndex := 100, derive := true]
def A086325 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x * y) + loop (λ (x _y) ↦ (-x)) y 1) (1 + x) 1 * (1 + x)

end Sequence