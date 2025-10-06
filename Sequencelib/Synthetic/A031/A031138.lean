/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A031138 sequence
-/

namespace Sequence

@[OEIS := A031138, offset := 1, maxIndex := 100, derive := true]
def A031138 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 + ((2 * (x + x)) + x))) - y) (λ (x _y) ↦ x) x 1 1

end Sequence