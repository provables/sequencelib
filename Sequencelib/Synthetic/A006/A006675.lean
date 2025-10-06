/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006675 sequence
-/

namespace Sequence

@[OEIS := A006675, offset := 0, maxIndex := 99, derive := true]
def A006675 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y 1 + x * y) + x) (x - 1) 0 * x

end Sequence