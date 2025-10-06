/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342856 sequence
-/

namespace Sequence

@[OEIS := A342856, offset := 1, maxIndex := 20, derive := true]
def A342856 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x y) ↦ (x * y) + x) (2 + x) 1

end Sequence