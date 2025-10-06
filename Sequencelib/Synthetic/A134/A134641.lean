/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134641 sequence
-/

namespace Sequence

@[OEIS := A134641, offset := 1, maxIndex := 5, derive := true]
def A134641 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ 2 + y) (λ (_x y) ↦ y + y) x 1 2

end Sequence