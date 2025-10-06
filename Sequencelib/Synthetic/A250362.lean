/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250362 sequence
-/

namespace Sequence

@[OEIS := A250362, offset := 1, maxIndex := 100, derive := true]
def A250362 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 (2 + x) - x) + if x ≤ 0 then 0 else 1

end Sequence