/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162852 sequence
-/

namespace Sequence

@[OEIS := A162852, offset := 1, maxIndex := 100, derive := true]
def A162852 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ (y - x) + y) (λ (x y) ↦ x + y) x 3 1

end Sequence