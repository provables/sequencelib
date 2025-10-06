/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094875 sequence
-/

namespace Sequence

@[OEIS := A094875, offset := 0, maxIndex := 99, derive := true]
def A094875 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop2 (λ (x _y) ↦ ((loop (λ (x y) ↦ (x * x) + y) 2 2 * 2) - x) + 1) (λ (x _y) ↦ x) x 1 0 + 2) * 2) - x) %
      (1 + x)) +
    1) /
  (x + 1)

end Sequence