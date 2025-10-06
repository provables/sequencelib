/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A217516 sequence
-/

namespace Sequence

@[OEIS := A217516, offset := 2, maxIndex := 94, derive := true]
def A217516 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((loop (λ (x y) ↦ y - (x % 2)) x 1 - x) % 3) + 1) * 2) - 1) + 2) - x % 2) + 2

end Sequence