/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112594 sequence
-/

namespace Sequence

@[OEIS := A112594, offset := 0, maxIndex := 70, derive := true]
def A112594 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * loop (λ (x y) ↦ (y / (x * x)) + x) x 1) - 2) + x

end Sequence