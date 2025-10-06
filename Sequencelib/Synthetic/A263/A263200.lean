/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263200 sequence
-/

namespace Sequence

@[OEIS := A263200, offset := 2, maxIndex := 100, derive := true]
def A263200 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 * (loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) (2 + x) 1 2 * 2)

end Sequence