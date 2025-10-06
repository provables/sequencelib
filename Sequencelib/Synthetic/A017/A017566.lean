/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017566 sequence
-/

namespace Sequence

@[OEIS := A017566, offset := 0, maxIndex := 10, derive := true]
def A017566 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * x) * y) (λ (x _y) ↦ x) 2 ((1 + ((x * 2) * 2)) * 3) 1

end Sequence