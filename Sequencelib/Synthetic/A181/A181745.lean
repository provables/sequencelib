/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181745 sequence
-/

namespace Sequence

@[OEIS := A181745, offset := 1, maxIndex := 4, derive := true]
def A181745 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x y) ↦ (x * y) + x) (y + 1) 1) (loop (λ (x _y) ↦ (x + x) + x) x 1 + 1) 0 - 1

end Sequence