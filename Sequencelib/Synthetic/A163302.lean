/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163302 sequence
-/

namespace Sequence

@[OEIS := A163302, offset := 1, maxIndex := 100, derive := true]
def A163302 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ 2 * ((x + y) + y)) (λ (x _y) ↦ x) x 1 1

end Sequence