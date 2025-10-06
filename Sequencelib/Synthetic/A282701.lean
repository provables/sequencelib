/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282701 sequence
-/

namespace Sequence

@[OEIS := A282701, offset := 0, maxIndex := 21, derive := true]
def A282701 (x : ℕ) : ℕ :=
  Int.toNat <| (((((comprN (λ (x : ℤ) ↦ (((((((((x / 2) / 2) / (1 + 2)) + x) / 2) / 2) + 1) % 2) - (x % 2))) x - 1) / 2) + 2) * 2) -
    1) %
  (x + 1)

end Sequence