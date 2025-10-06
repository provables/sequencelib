/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A206351 sequence
-/

namespace Sequence

@[OEIS := A206351, offset := 1, maxIndex := 25, derive := true]
def A206351 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (4 * y) 1 1 + x) x 1

end Sequence