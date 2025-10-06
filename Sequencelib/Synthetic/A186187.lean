/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186187 sequence
-/

namespace Sequence

@[OEIS := A186187, offset := 0, maxIndex := 100, derive := true]
def A186187 (x : ℕ) : ℕ :=
  Int.toNat <| loop
  (λ (x _y) ↦
    (((((((((loop (λ (x _y) ↦ loop (λ (x y) ↦ (x % 2) + y) x 1) 2 x + 1) + x) * (x / 2)) + 1) + 2) * x) + 1) % 4) *
        if x ≤ 0 then 1 else 1) +
      1)
  1 (x - 1)

end Sequence