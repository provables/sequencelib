/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089678 sequence
-/

namespace Sequence

@[OEIS := A089678, offset := 1, maxIndex := 4, derive := true]
def A089678 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ 2 + (x * y)) (loop (λ (x y) ↦ x * y) x 1) 1 / 2) + x * y) x 0 + 2

end Sequence