/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A303150 sequence
-/

namespace Sequence

@[OEIS := A303150, offset := 2, maxIndex := 6, derive := true]
def A303150 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 * (loop2 (λ (x y) ↦ (y * y) + x) (λ (x _y) ↦ x) x 2 1 / 2)

end Sequence