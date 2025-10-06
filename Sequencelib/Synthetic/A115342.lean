/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115342 sequence
-/

namespace Sequence

@[OEIS := A115342, offset := 6, maxIndex := 33, derive := true]
def A115342 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| 1 + (2 * loop (λ (x _y) ↦ x + x) (4 + x) x)

end Sequence