/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118828 sequence
-/

namespace Sequence

@[OEIS := A118828, offset := 1, maxIndex := 100, derive := true]
def A118828 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ (y % 3) - 1) (λ (x y) ↦ x + y) x 1 0

end Sequence