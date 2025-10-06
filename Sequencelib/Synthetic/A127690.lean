/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127690 sequence
-/

namespace Sequence

@[OEIS := A127690, offset := 1, maxIndex := 10, derive := true]
def A127690 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x _y) ↦ (x * x) + x) x 1) + loop (λ (_x _y) ↦ 0) x 1

end Sequence