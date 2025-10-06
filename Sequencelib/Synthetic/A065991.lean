/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065991 sequence
-/

namespace Sequence

@[OEIS := A065991, offset := 1, maxIndex := 3, derive := true]
def A065991 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x _y) ↦ ((loop (λ (x _y) ↦ x * x) 2 2 - 2) * ((x * 3) + x)) + x) x 1 + 1) + 2) * 2) + 1) + 2) * x) +
    1) /
  loop (λ (x _y) ↦ x + x) x 1

end Sequence