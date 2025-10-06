/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138513 sequence
-/

namespace Sequence

@[OEIS := A138513, offset := 1, maxIndex := 20, derive := true]
def A138513 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 * ((x - y) + x))) - y) (λ (x _y) ↦ x) x 1 1

end Sequence