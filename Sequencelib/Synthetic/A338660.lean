/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338660 sequence
-/

namespace Sequence

@[OEIS := A338660, offset := 1, maxIndex := 6, derive := true]
def A338660 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 * (x + x)) x 1 1 / 2) + loop (λ (x y) ↦ x * y) x 1

end Sequence