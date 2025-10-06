/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015519 sequence
-/

namespace Sequence

@[OEIS := A015519, offset := 0, maxIndex := 100, derive := true]
def A015519 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (2 * ((x + x) * 2)) + y) x 0 1

end Sequence