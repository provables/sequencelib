/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003039 sequence
-/

namespace Sequence

@[OEIS := A003039, offset := 1, maxIndex := 6, derive := true]
def A003039 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((if x ≤ 0 then 1 else loop (λ (x y) ↦ ((x + x) - y) + x) x 1 + x) * x) / 2) + 2) / 2) + x

end Sequence