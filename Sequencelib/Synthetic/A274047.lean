/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274047 sequence
-/

namespace Sequence

@[OEIS := A274047, offset := 5, maxIndex := 100, derive := true]
def A274047 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ ((y - x) / (x + 1)) + x) x 1 2 / 2) + 2

end Sequence