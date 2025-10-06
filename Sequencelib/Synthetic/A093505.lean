/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093505 sequence
-/

namespace Sequence

@[OEIS := A093505, offset := 1, maxIndex := 65, derive := true]
def A093505 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x % 2) + x

end Sequence