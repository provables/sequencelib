/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175718 sequence
-/

namespace Sequence

@[OEIS := A175718, offset := 1, maxIndex := 5, derive := true]
def A175718 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 3 2) x 1

end Sequence