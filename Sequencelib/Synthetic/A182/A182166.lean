/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182166 sequence
-/

namespace Sequence

@[OEIS := A182166, offset := 2, maxIndex := 49, derive := true]
def A182166 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y + y) x 1 1 * (loop (λ (x y) ↦ x + y) x x + 1)

end Sequence