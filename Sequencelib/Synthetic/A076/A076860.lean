/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076860 sequence
-/

namespace Sequence

@[OEIS := A076860, offset := 3, maxIndex := 7, derive := true]
def A076860 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y 2 - x / y) x 0 + 1

end Sequence