/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160543 sequence
-/

namespace Sequence

@[OEIS := A160543, offset := 1, maxIndex := 67, derive := true]
def A160543 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((x / loop (λ (x _y) ↦ x * x) 2 2) + x)

end Sequence