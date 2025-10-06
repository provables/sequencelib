/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134862 sequence
-/

namespace Sequence

@[OEIS := A134862, offset := 1, maxIndex := 54, derive := true]
def A134862 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 * y) + x) 2 x + 1

end Sequence