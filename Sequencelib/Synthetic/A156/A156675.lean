/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156675 sequence
-/

namespace Sequence

@[OEIS := A156675, offset := 0, maxIndex := 95, derive := true]
def A156675 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) 2 x) x 1 - 1) + 1) * (loop (λ (x _y) ↦ x * x) 2 2 + 1)

end Sequence