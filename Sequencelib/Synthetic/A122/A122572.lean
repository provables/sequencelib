/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122572 sequence
-/

namespace Sequence

@[OEIS := A122572, offset := 1, maxIndex := 50, derive := true]
def A122572 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * (y + y)) - x) (x + x) 1 0 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence