/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090597 sequence
-/

namespace Sequence

@[OEIS := A090597, offset := 3, maxIndex := 100, derive := true]
def A090597 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 2 + loop (λ (x _y) ↦ x + x) x 1) / 3) + 1) / 2

end Sequence