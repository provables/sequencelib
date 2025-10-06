/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137583 sequence
-/

namespace Sequence

@[OEIS := A137583, offset := 1, maxIndex := 8, derive := true]
def A137583 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop (λ (x _y) ↦ x * x) 1 (1 + (x / 2))

end Sequence