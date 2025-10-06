/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254651 sequence
-/

namespace Sequence

@[OEIS := A254651, offset := 0, maxIndex := 100, derive := true]
def A254651 (x : ℕ) : ℕ :=
  Int.toNat <| if (loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x % 2) ≤ 0 then 1 else x % 2

end Sequence