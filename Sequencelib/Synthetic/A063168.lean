/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063168 sequence
-/

namespace Sequence

@[OEIS := A063168, offset := 1, maxIndex := 46, derive := true]
def A063168 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((2 + (2 + y)) * x) + y) 2 x - if x ≤ 0 then 1 else 2

end Sequence