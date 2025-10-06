/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098655 sequence
-/

namespace Sequence

@[OEIS := A098655, offset := 0, maxIndex := 28, derive := true]
def A098655 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (1 + loop2 (λ (_x y) ↦ 2 * y) (λ (x _y) ↦ x) x 2 0)

end Sequence