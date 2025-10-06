/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266302 sequence
-/

namespace Sequence

@[OEIS := A266302, offset := 0, maxIndex := 100, derive := true]
def A266302 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 2) ≤ 0 then 1 else loop (λ (x _y) ↦ x + x) (x + x) 2 - 2

end Sequence