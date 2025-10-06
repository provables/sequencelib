/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A297217 sequence
-/

namespace Sequence

@[OEIS := A297217, offset := 1, maxIndex := 87, derive := true]
def A297217 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((1 - (x / (1 + y))) * 2) * 2) x 3

end Sequence