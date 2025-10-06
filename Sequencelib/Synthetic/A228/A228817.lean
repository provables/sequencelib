/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228817 sequence
-/

namespace Sequence

@[OEIS := A228817, offset := 45, maxIndex := 49, derive := true]
def A228817 (n : ℕ) : ℕ :=
  let x := n - 45
  Int.toNat <| loop (λ (x y) ↦ 2 / if x ≤ 0 then 1 else y) x 1

end Sequence