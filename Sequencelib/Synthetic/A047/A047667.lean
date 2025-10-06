/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047667 sequence
-/

namespace Sequence

@[OEIS := A047667, offset := 1, maxIndex := 39, derive := true]
def A047667 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * (y * y)) + x) (1 + x) 1 - x * x

end Sequence