/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007362 sequence
-/

namespace Sequence

@[OEIS := A007362, offset := 1, maxIndex := 8, derive := true]
def A007362 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x % 2) + loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) x 1 0

end Sequence