/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063136 sequence
-/

namespace Sequence

@[OEIS := A063136, offset := 1, maxIndex := 53, derive := true]
def A063136 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((x * 2) * 2) + y) 2 x + if x ≤ 0 then 1 else x) + x

end Sequence