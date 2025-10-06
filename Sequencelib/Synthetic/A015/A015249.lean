/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015249 sequence
-/

namespace Sequence

@[OEIS := A015249, offset := 2, maxIndex := 100, derive := true]
def A015249 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (2 * (x + (2 * y)))) (λ (x _y) ↦ x + x) x 1 0

end Sequence