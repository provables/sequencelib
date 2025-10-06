/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025579 sequence
-/

namespace Sequence

@[OEIS := A025579, offset := 1, maxIndex := 100, derive := true]
def A025579 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (1 % y)) * x) (λ (x _y) ↦ x) x 1 1

end Sequence