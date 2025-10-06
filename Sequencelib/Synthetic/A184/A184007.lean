/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184007 sequence
-/

namespace Sequence

@[OEIS := A184007, offset := 1, maxIndex := 100, derive := true]
def A184007 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((((((((((x / (1 + (2 + 4))) / 2) + x) + x) / 3) + x) / 2) + 1) % 2) + if x ≤ 0 then 0 else 2) + x) x
    1 +
  1

end Sequence