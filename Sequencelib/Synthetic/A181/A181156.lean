/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181156 sequence
-/

namespace Sequence

@[OEIS := A181156, offset := 1, maxIndex := 25, derive := true]
def A181156 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (3 * (1 + x)) 1 (x % 2)

end Sequence