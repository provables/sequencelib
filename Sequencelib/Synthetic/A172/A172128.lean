/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172128 sequence
-/

namespace Sequence

@[OEIS := A172128, offset := 1, maxIndex := 100, derive := true]
def A172128 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 2 - x % 2) / (1 + x)

end Sequence