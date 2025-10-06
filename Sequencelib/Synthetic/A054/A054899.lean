/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054899 sequence
-/

namespace Sequence

@[OEIS := A054899, offset := 0, maxIndex := 100, derive := true]
def A054899 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ (y / 2) / (1 + 4)) x 0 x - x

end Sequence