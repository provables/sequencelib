/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081374 sequence
-/

namespace Sequence

@[OEIS := A081374, offset := 1, maxIndex := 100, derive := true]
def A081374 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 2 1) + loop (λ (x _y) ↦ 2 * x) x 2) / 3

end Sequence