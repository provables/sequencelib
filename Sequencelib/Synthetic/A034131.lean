/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034131 sequence
-/

namespace Sequence

@[OEIS := A034131, offset := 1, maxIndex := 39, derive := true]
def A034131 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ (x * x) * x) 1 (1 + (2 + (x + x))) / 2) / 2) / 2) + 1

end Sequence