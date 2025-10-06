/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266611 sequence
-/

namespace Sequence

@[OEIS := A266611, offset := 0, maxIndex := 100, derive := true]
def A266611 (x : ℕ) : ℕ :=
  Int.toNat <| if loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x - y) x x 2 ≤ 0 then 1 else 0

end Sequence