/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004663 sequence
-/

namespace Sequence

@[OEIS := A004663, offset := 0, maxIndex := 100, derive := true]
def A004663 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (x y) ↦ if y ≤ 0 then x else 0) x 1 0

end Sequence