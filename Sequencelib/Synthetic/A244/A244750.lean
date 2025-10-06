/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244750 sequence
-/

namespace Sequence

@[OEIS := A244750, offset := 1, maxIndex := 20, derive := true]
def A244750 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (1 / x) + y) (λ (_x y) ↦ y + y) x x 1

end Sequence