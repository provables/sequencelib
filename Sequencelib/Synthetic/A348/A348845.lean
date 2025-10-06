/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348845 sequence
-/

namespace Sequence

@[OEIS := A348845, offset := 0, maxIndex := 44, derive := true]
def A348845 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x y) ↦ ((2 + y) * x) + 1) 2 x)

end Sequence