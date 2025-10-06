/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006187 sequence
-/

namespace Sequence

@[OEIS := A006187, offset := 5, maxIndex := 12, derive := true]
def A006187 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((((loop (λ (x y) ↦ (((1 + if x ≤ 0 then 1 else x) % (((1 + x) + x) * (1 + x))) + 1) - y) x x + x) + 1) + x) + 1) +
    x) -
  1

end Sequence