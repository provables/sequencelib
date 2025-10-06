/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054603 sequence
-/

namespace Sequence

@[OEIS := A054603, offset := 0, maxIndex := 50, derive := true]
def A054603 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x y) ↦ x + y) (x * x) x

end Sequence