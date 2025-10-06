/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051481 sequence
-/

namespace Sequence

@[OEIS := A051481, offset := 0, maxIndex := 7, derive := true]
def A051481 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((((2 + y) * y) + x) + y) * x) x 1

end Sequence