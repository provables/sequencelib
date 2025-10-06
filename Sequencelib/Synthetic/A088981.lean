/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088981 sequence
-/

namespace Sequence

@[OEIS := A088981, offset := 0, maxIndex := 32, derive := true]
def A088981 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 + (2 * (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 2 1 + x)))

end Sequence