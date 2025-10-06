/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139473 sequence
-/

namespace Sequence

@[OEIS := A139473, offset := 1, maxIndex := 7, derive := true]
def A139473 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (loop (λ (x _y) ↦ (2 + x) + x) x 0) 0 1 / 2

end Sequence