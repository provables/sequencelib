/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108047 sequence
-/

namespace Sequence

@[OEIS := A108047, offset := 1, maxIndex := 11, derive := true]
def A108047 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((loop (λ (x _y) ↦ (x + x) + x) 2 x * y) + x) + y) (λ (x _y) ↦ x) x 1 0

end Sequence