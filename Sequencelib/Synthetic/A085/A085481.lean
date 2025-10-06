/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085481 sequence
-/

namespace Sequence

@[OEIS := A085481, offset := 1, maxIndex := 13, derive := true]
def A085481 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ 3 * (x + y)) (λ (x _y) ↦ x) x 1 0

end Sequence