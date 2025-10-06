/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116899 sequence
-/

namespace Sequence

@[OEIS := A116899, offset := 1, maxIndex := 4, derive := true]
def A116899 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (x _y) ↦ x) x 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (loop (λ (x _y) ↦ x + x) x 1) 1 1) -
  x

end Sequence