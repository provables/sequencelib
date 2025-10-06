/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307143 sequence
-/

namespace Sequence

@[OEIS := A307143, offset := 6, maxIndex := 9, derive := true]
def A307143 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| (((loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 3 * 2) - 1) - x) / 2

end Sequence