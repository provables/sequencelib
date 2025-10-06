/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086902 sequence
-/

namespace Sequence

@[OEIS := A086902, offset := 0, maxIndex := 100, derive := true]
def A086902 (x : ℕ) : ℕ :=
  Int.toNat <| loop2
    (λ (x y) ↦
      ((((((((loop (λ (x _y) ↦ x * x) 1 (1 + ((x + x) + x)) % (1 + x)) + 1) + 1) * (x + 1)) + 1) + 1) + x) - 1) + y)
    (λ (x _y) ↦ x) x 1 0 +
  1

end Sequence