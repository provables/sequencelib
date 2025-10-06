/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A297530 sequence
-/

namespace Sequence

@[OEIS := A297530, offset := 1, maxIndex := 4, derive := true]
def A297530 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x y) ↦ (x * y) + x) y 3) (λ (x y) ↦ x + y) x 1 1 / (1 + x)

end Sequence