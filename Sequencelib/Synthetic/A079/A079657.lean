/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079657 sequence
-/

namespace Sequence

@[OEIS := A079657, offset := 1, maxIndex := 4, derive := true]
def A079657 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 0 else loop (λ (x y) ↦ (x + y) * x) x 1 + x % 2

end Sequence