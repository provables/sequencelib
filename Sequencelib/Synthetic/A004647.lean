/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004647 sequence
-/

namespace Sequence

@[OEIS := A004647, offset := 0, maxIndex := 100, derive := true]
def A004647 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((if (y % 3) ≤ 0 then x else 0 + 1) / 2) + x) + x) x 1

end Sequence