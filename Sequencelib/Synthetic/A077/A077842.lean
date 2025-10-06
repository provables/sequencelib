/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077842 sequence
-/

namespace Sequence

@[OEIS := A077842, offset := 0, maxIndex := 28, derive := true]
def A077842 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (3 * ((x / 2) + y))) (λ (x y) ↦ x + y) x 1 0

end Sequence