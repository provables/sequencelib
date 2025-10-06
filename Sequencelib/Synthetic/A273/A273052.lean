/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273052 sequence
-/

namespace Sequence

@[OEIS := A273052, offset := 1, maxIndex := 100, derive := true]
def A273052 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 * x) + y) (λ (x _y) ↦ (-x)) x 2 2

end Sequence