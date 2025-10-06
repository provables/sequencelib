/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103526 sequence
-/

namespace Sequence

@[OEIS := A103526, offset := 0, maxIndex := 3, derive := true]
def A103526 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ loop (λ (x y) ↦ (y + x) + x) x 0) x 2

end Sequence