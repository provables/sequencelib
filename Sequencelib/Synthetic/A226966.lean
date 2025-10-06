/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226966 sequence
-/

namespace Sequence

@[OEIS := A226966, offset := 1, maxIndex := 5, derive := true]
def A226966 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else 2 * (2 * (2 * loop (λ (x _y) ↦ (x * x) + x) x 1))

end Sequence