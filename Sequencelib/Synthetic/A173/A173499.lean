/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173499 sequence
-/

namespace Sequence

@[OEIS := A173499, offset := 1, maxIndex := 21, derive := true]
def A173499 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x x x / (1 + x)

end Sequence