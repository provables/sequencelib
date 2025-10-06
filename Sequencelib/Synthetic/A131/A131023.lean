/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131023 sequence
-/

namespace Sequence

@[OEIS := A131023, offset := 1, maxIndex := 33, derive := true]
def A131023 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (x y) ↦ (((y % 2) + x) + x) - y) (λ (x y) ↦ x + y) x 1 1 - 1) + 1) + loop (λ (x _y) ↦ x + x) x 1) / 2

end Sequence