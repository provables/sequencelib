/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132293 sequence
-/

namespace Sequence

@[OEIS := A132293, offset := 3, maxIndex := 8, derive := true]
def A132293 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 1 + (x + loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 0) x 0 2)

end Sequence