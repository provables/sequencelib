/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211710 sequence
-/

namespace Sequence

@[OEIS := A211710, offset := 1, maxIndex := 100, derive := true]
def A211710 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (1 + x) 2 1) * 3) + 2) * 2

end Sequence