/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077820 sequence
-/

namespace Sequence

@[OEIS := A077820, offset := 11, maxIndex := 19, derive := true]
def A077820 (n : ℕ) : ℕ :=
  let x := n - 11
  Int.toNat <| comprN
  (λ (x : ℤ) ↦
    (((((((((loop (λ (x y : ℤ) ↦ ((y / (1 + (x % 2))) + x)) (x) (0) * 2) + 1) / 2) + 2) + x) / 2) - x) / 2) % (2 * 2)))
  (x - 1)

end Sequence