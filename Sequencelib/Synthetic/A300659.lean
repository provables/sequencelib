/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A300659 sequence
-/

namespace Sequence

@[OEIS := A300659, offset := 0, maxIndex := 86, derive := true]
def A300659 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x % 4) * y) x 1

end Sequence