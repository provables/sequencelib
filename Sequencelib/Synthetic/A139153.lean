/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139153 sequence
-/

namespace Sequence

@[OEIS := A139153, offset := 3, maxIndex := 100, derive := true]
def A139153 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 1 + loop (λ (x y) ↦ ((2 + y) * x) + x) x 1

end Sequence