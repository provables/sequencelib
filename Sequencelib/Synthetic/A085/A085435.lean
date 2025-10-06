/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085435 sequence
-/

namespace Sequence

@[OEIS := A085435, offset := 1, maxIndex := 25, derive := true]
def A085435 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ (-x)) x 1 + loop (λ (x _y) ↦ x + x) x 2) * loop (λ (x _y) ↦ 1 + (x + x)) x 1

end Sequence