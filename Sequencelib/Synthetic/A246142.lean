/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246142 sequence
-/

namespace Sequence

@[OEIS := A246142, offset := 1, maxIndex := 24, derive := true]
def A246142 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x _y) ↦ 2 + ((x / 2) + x)) x 0 - 1) / 2) + 2) * x) + 1) - x / 3) % 2

end Sequence