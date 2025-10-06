/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062815 sequence
-/

namespace Sequence

@[OEIS := A062815, offset := 1, maxIndex := 50, derive := true]
def A062815 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x x x) 1 y + x) (x + 1) 0

end Sequence