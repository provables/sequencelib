/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137208 sequence
-/

namespace Sequence

@[OEIS := A137208, offset := 0, maxIndex := 100, derive := true]
def A137208 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ 2 * (x + x)) x 1 1

end Sequence