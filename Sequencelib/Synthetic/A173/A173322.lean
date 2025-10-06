/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173322 sequence
-/

namespace Sequence

@[OEIS := A173322, offset := 0, maxIndex := 100, derive := true]
def A173322 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x y) ↦ x * y) x 2)

end Sequence