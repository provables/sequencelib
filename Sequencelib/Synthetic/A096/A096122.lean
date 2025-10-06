/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096122 sequence
-/

namespace Sequence

@[OEIS := A096122, offset := 2, maxIndex := 6, derive := true]
def A096122 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + loop (λ (x y) ↦ (((x * y) - y) / 2) + x) x x

end Sequence