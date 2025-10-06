/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026549 sequence
-/

namespace Sequence

@[OEIS := A026549, offset := 0, maxIndex := 31, derive := true]
def A026549 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 - (y % 2)) * x) + x) x 1

end Sequence