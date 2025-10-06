/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323516 sequence
-/

namespace Sequence

@[OEIS := A323516, offset := 1, maxIndex := 3, derive := true]
def A323516 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ ((1 + loop (λ (x _y) ↦ (x * x) + x) x 2) / 3) + y) x 1 + 2) * x) + 1) + 2) * 2

end Sequence