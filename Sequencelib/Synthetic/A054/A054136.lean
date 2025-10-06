/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054136 sequence
-/

namespace Sequence

@[OEIS := A054136, offset := 2, maxIndex := 30, derive := true]
def A054136 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((loop (λ (x y) ↦ 2 * loop (λ (x y) ↦ 2 + (x + y)) y x) x 1 + 1) / 2) + 1) + x

end Sequence