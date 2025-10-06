/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080787 sequence
-/

namespace Sequence

@[OEIS := A080787, offset := 1, maxIndex := 59, derive := true]
def A080787 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y % (2 * (1 + 4))) + x) (λ (x _y) ↦ x) x 1 0

end Sequence