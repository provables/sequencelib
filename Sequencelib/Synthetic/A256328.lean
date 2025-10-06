/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256328 sequence
-/

namespace Sequence

@[OEIS := A256328, offset := 0, maxIndex := 100, derive := true]
def A256328 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y * y) * y) - x) x 0 + (x * x) * x

end Sequence