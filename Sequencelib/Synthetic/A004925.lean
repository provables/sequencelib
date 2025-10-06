/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004925 sequence
-/

namespace Sequence

@[OEIS := A004925, offset := 0, maxIndex := 34, derive := true]
def A004925 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ 2 + (x * x)) 2 3 * y) x 1 - 1

end Sequence