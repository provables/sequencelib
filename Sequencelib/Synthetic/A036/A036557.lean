/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036557 sequence
-/

namespace Sequence

@[OEIS := A036557, offset := 0, maxIndex := 100, derive := true]
def A036557 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (_x y) ↦ (y + y) + y) (λ (x _y) ↦ x) x 2 1 + loop (λ (x _y) ↦ x + x) x 1) / 3) + 1) / 2

end Sequence