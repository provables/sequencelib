/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169870 sequence
-/

namespace Sequence

@[OEIS := A169870, offset := 1, maxIndex := 7, derive := true]
def A169870 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((((((((loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 3 1 + x) / 2) + 1) / 2) / 2) + 1) + x) / (1 + x)) % 2)
  x

end Sequence