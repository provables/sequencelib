/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180589 sequence
-/

namespace Sequence

@[OEIS := A180589, offset := 1, maxIndex := 23, derive := true]
def A180589 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y 1 + x * y) + x) x 1 / (1 + x)

end Sequence