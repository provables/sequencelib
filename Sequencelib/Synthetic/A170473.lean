/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170473 sequence
-/

namespace Sequence

@[OEIS := A170473, offset := 0, maxIndex := 15, derive := true]
def A170473 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * ((loop (λ (x _y) ↦ x * x) 2 2 * x) - x / 2)) x 1

end Sequence