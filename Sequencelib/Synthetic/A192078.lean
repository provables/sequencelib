/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192078 sequence
-/

namespace Sequence

@[OEIS := A192078, offset := 1, maxIndex := 7, derive := true]
def A192078 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1 / (1 + x)) + 1) + x) + 1) % (x * y)) + 1) x 1 + x

end Sequence