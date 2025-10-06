/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174318 sequence
-/

namespace Sequence

@[OEIS := A174318, offset := 0, maxIndex := 22, derive := true]
def A174318 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x - (y % 2)) * y) + x) (x - 1) 1

end Sequence