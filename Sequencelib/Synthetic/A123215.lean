/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123215 sequence
-/

namespace Sequence

@[OEIS := A123215, offset := 1, maxIndex := 7, derive := true]
def A123215 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((((loop2 (λ (x y) ↦ (1 / x) + y) (λ (x y) ↦ x * y) x 1 2 + 1) / 2) + 1) + x) / 2) + x) / 2

end Sequence