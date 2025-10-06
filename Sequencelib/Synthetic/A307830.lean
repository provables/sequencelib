/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307830 sequence
-/

namespace Sequence

@[OEIS := A307830, offset := 1, maxIndex := 9, derive := true]
def A307830 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN
    (λ (x : ℤ) ↦
      (((((((((((((if ((x % (1 + 2))) ≤ 0 then (x) else (1) + 1) / 2) + x) + x) / 2) / 2) + 1) / 2) / 2) % 2) + 1) +
          x) %
        2))
    x +
  1

end Sequence