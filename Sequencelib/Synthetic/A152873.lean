/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152873 sequence
-/

namespace Sequence

@[OEIS := A152873, offset := 2, maxIndex := 25, derive := true]
def A152873 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x) y 1 2 * x) x 2

end Sequence