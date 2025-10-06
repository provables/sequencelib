/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330117 sequence
-/

namespace Sequence

@[OEIS := A330117, offset := 1, maxIndex := 64, derive := true]
def A330117 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x _y) ↦ x / (1 + (2 + 4))) 2 x + 1) + x) / 2) + 1) + x) / 2) + 1) + x

end Sequence