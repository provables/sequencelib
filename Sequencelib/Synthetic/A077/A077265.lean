/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077265 sequence
-/

namespace Sequence

@[OEIS := A077265, offset := 3, maxIndex := 34, derive := true]
def A077265 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop (λ (x y) ↦ 2 + (x + y)) x (2 * loop (λ (x _y) ↦ x + x) x 2) + 1) * 2) + 2) + 2

end Sequence