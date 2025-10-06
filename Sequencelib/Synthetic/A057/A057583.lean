/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057583 sequence
-/

namespace Sequence

@[OEIS := A057583, offset := 0, maxIndex := 4, derive := true]
def A057583 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((x - 1) + x) + x) x 2 / 2) + loop (λ (x y) ↦ x + y) x 1) * 2

end Sequence