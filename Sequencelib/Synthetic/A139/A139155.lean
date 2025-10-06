/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139155 sequence
-/

namespace Sequence

@[OEIS := A139155, offset := 4, maxIndex := 100, derive := true]
def A139155 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| 1 + loop (λ (x y) ↦ (2 + (2 + y)) * x) x 3

end Sequence