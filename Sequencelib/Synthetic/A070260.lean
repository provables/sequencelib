/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070260 sequence
-/

namespace Sequence

@[OEIS := A070260, offset := 1, maxIndex := 100, derive := true]
def A070260 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x _y) ↦ 1 - x) x 2 + 2) + 1) * (x + 1)) - x) * ((2 + x) + 1)) - 1) - x) / 2) / 2

end Sequence