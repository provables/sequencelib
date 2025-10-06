/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101328 sequence
-/

namespace Sequence

@[OEIS := A101328, offset := 2, maxIndex := 57, derive := true]
def A101328 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + (2 * loop2 (λ (x y) ↦ x + y) (λ (_x _y) ↦ 1) x x x)

end Sequence