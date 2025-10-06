/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021152 sequence
-/

namespace Sequence

@[OEIS := A021152, offset := 0, maxIndex := 100, derive := true]
def A021152 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((if (x % (1 + 4)) ≤ 0 then 1 else 0 % 2) + (((1 + x) * (x / 2)) + x)) + x) % 3) - 1) + 1) /
        loop (λ (x _y) ↦ x + x) x 1) +
      1) %
    2) *
  (((((((x - 1) % 3) + 1) + 1) + 1) + 1) + 1)

end Sequence