/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003135 sequence
-/

namespace Sequence

@[OEIS := A003135, offset := 1, maxIndex := 3, derive := true]
def A003135 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + (x + y)) (2 + if x ≤ 0 then 1 else x) x

end Sequence