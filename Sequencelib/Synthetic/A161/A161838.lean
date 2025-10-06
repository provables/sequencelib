/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161838 sequence
-/

namespace Sequence

@[OEIS := A161838, offset := 0, maxIndex := 9, derive := true]
def A161838 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((1 + x) * (y / 4)) - x) x 0

end Sequence