/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048694 sequence
-/

namespace Sequence

@[OEIS := A048694, offset := 0, maxIndex := 25, derive := true]
def A048694 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (2 * (x + y))) (λ (x _y) ↦ x / 2) x 1 2

end Sequence