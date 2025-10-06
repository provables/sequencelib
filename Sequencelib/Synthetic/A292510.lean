/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292510 sequence
-/

namespace Sequence

@[OEIS := A292510, offset := 3, maxIndex := 90, derive := true]
def A292510 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ x / 2) x 0 1 + 2) + 2

end Sequence