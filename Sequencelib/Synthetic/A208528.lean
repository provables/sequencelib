/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A208528 sequence
-/

namespace Sequence

@[OEIS := A208528, offset := 2, maxIndex := 100, derive := true]
def A208528 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 * (2 * loop (λ (x y) ↦ x * y) x x)

end Sequence