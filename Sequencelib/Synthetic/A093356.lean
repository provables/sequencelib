/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093356 sequence
-/

namespace Sequence

@[OEIS := A093356, offset := 1, maxIndex := 100, derive := true]
def A093356 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 + y) * x) (λ (_x _y) ↦ 2) x 2 1 + loop (λ (x _y) ↦ x + x) x 1

end Sequence