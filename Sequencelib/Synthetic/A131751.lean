/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131751 sequence
-/

namespace Sequence

@[OEIS := A131751, offset := 1, maxIndex := 16, derive := true]
def A131751 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ 2 + (x + x)) 4 2 * x) - y) (λ (x _y) ↦ x) x 1 1 / 2) + 1

end Sequence