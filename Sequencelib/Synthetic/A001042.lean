/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001042 sequence
-/

namespace Sequence

@[OEIS := A001042, offset := 0, maxIndex := 12, derive := true]
def A001042 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) - x) + y) (λ (x y) ↦ y - x) x 1 2

end Sequence