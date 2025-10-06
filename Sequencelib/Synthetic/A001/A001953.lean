/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001953 sequence
-/

namespace Sequence

@[OEIS := A001953, offset := 0, maxIndex := 100, derive := true]
def A001953 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y * y) / ((2 + x) + y)) + y) ((1 + x) + x) 1 / 2

end Sequence