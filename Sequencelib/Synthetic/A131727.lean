/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131727 sequence
-/

namespace Sequence

@[OEIS := A131727, offset := 4, maxIndex := 32, derive := true]
def A131727 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (2 + x) 2 1 / 2) / ((2 * 2) + 1)

end Sequence