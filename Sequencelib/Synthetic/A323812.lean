/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323812 sequence
-/

namespace Sequence

@[OEIS := A323812, offset := 2, maxIndex := 40, derive := true]
def A323812 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ x + y) x 0 x - x % 2) + 1

end Sequence