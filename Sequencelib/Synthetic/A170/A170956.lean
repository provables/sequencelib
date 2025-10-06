/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170956 sequence
-/

namespace Sequence

@[OEIS := A170956, offset := 0, maxIndex := 21, derive := true]
def A170956 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x - 1) - if x ≤ 0 then 0 else 1) - y) (λ (x _y) ↦ x) x 1 1 % 2

end Sequence