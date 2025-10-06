/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033827 sequence
-/

namespace Sequence

@[OEIS := A033827, offset := 1, maxIndex := 10, derive := true]
def A033827 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((x % 2) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) + 1) + x) / 2) / 2) + 1) * 2

end Sequence