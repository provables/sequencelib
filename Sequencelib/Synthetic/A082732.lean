/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082732 sequence
-/

namespace Sequence

@[OEIS := A082732, offset := 1, maxIndex := 10, derive := true]
def A082732 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((y * y) + x) + 1 / x) (λ (x y) ↦ x * y) x 1 1

end Sequence