/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095338 sequence
-/

namespace Sequence

@[OEIS := A095338, offset := 1, maxIndex := 79, derive := true]
def A095338 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y + y) x x 1 * (1 + x)

end Sequence