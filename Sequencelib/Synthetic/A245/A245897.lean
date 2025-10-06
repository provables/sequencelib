/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245897 sequence
-/

namespace Sequence

@[OEIS := A245897, offset := 1, maxIndex := 5, derive := true]
def A245897 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x _y) ↦ 2 * (((2 * (x + x)) - 2) + x)) x 1 + 1) + 1) + loop (λ (x _y) ↦ (x + x) + x) x 1) / 3) + 2) / 2

end Sequence