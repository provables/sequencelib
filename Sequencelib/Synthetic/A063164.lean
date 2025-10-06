/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063164 sequence
-/

namespace Sequence

@[OEIS := A063164, offset := 1, maxIndex := 49, derive := true]
def A063164 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ 1 + (2 * (x + x))) 2 x * 2) - if x ≤ 0 then 1 else 2

end Sequence