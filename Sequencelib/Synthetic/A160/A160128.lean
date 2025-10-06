/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160128 sequence
-/

namespace Sequence

@[OEIS := A160128, offset := 0, maxIndex := 22, derive := true]
def A160128 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ 2 + (2 * (2 * (x - y)))) x 2

end Sequence