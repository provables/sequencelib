/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096129 sequence
-/

namespace Sequence

@[OEIS := A096129, offset := 0, maxIndex := 32, derive := true]
def A096129 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x _y) ↦ x * x) 1 ((x * x) + x))

end Sequence