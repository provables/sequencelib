/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095033 sequence
-/

namespace Sequence

@[OEIS := A095033, offset := 1, maxIndex := 9, derive := true]
def A095033 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((x + loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 1) / 3) % 2) x + 1

end Sequence