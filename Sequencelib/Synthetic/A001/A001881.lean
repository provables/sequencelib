/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001881 sequence
-/

namespace Sequence

@[OEIS := A001881, offset := 5, maxIndex := 100, derive := true]
def A001881 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (loop (λ (x y) ↦ ((2 + (2 + y)) * x) + x) (x + x) 1 / loop (λ (x y) ↦ x * y) x 1) / loop (λ (x _y) ↦ x + x) x 1

end Sequence