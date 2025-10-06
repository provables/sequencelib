/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083234 sequence
-/

namespace Sequence

@[OEIS := A083234, offset := 0, maxIndex := 18, derive := true]
def A083234 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) - y) (λ (_x y) ↦ y + y) x 1 2

end Sequence