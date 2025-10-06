/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131355 sequence
-/

namespace Sequence

@[OEIS := A131355, offset := 0, maxIndex := 55, derive := true]
def A131355 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / (2 - (y % 2))) + x) x 1 - x

end Sequence