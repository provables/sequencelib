/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228920 sequence
-/

namespace Sequence

@[OEIS := A228920, offset := 1, maxIndex := 100, derive := true]
def A228920 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 * loop2 (λ (x y) ↦ x - y) (λ (x y) ↦ x + y) x 1 1) + loop (λ (x _y) ↦ x + x) x 1) + loop (λ (x _y) ↦ x + x) x 1) *
    loop (λ (x _y) ↦ x + x) x 1) /
  2

end Sequence