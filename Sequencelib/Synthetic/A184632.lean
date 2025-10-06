/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184632 sequence
-/

namespace Sequence

@[OEIS := A184632, offset := 1, maxIndex := 60, derive := true]
def A184632 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (1 + x) / if x ≤ 0 then 1 else 2

end Sequence