/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131649 sequence
-/

namespace Sequence

@[OEIS := A131649, offset := 3, maxIndex := 47, derive := true]
def A131649 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ ((1 / x) + y) * y) x 1 + loop (λ (x y) ↦ x + y) x 1) * 2

end Sequence