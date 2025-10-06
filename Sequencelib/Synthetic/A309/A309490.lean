/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309490 sequence
-/

namespace Sequence

@[OEIS := A309490, offset := 1, maxIndex := 24, derive := true]
def A309490 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (1 + if x ≤ 0 then 0 else y) * (1 + x)) x 0

end Sequence