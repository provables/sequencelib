/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266222 sequence
-/

namespace Sequence

@[OEIS := A266222, offset := 0, maxIndex := 100, derive := true]
def A266222 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + (y + y)) / ((1 + x) + x)) x x

end Sequence