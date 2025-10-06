/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168667 sequence
-/

namespace Sequence

@[OEIS := A168667, offset := 0, maxIndex := 100, derive := true]
def A168667 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((x * x) * x) + x) 1 (loop (λ (x _y) ↦ x * x) 2 x * x) / 2) * x) * x

end Sequence