/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109231 sequence
-/

namespace Sequence

@[OEIS := A109231, offset := 1, maxIndex := 65, derive := true]
def A109231 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y % 2) + x * y) + x) x 1 / loop (λ (x y) ↦ x * y) x 1

end Sequence