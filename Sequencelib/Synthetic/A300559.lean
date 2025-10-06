/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A300559 sequence
-/

namespace Sequence

@[OEIS := A300559, offset := 0, maxIndex := 21, derive := true]
def A300559 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x y) ↦ (x * y) + x) x x / 2)

end Sequence