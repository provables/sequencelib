/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123684 sequence
-/

namespace Sequence

@[OEIS := A123684, offset := 1, maxIndex := 100, derive := true]
def A123684 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ 1 + x) x x 0

end Sequence