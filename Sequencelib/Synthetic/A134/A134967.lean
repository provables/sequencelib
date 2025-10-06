/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134967 sequence
-/

namespace Sequence

@[OEIS := A134967, offset := 0, maxIndex := 100, derive := true]
def A134967 (x : ℕ) : ℤ :=
  ((((((((((loop (λ (x _y) ↦ (2 + ((1 + 4) * (x % 2))) / (x + 1)) x 1 / 2) * 2) + 1) * (x + 1)) / 2) + 1) / 2) * 2) - 2) +
    1) -
  x

end Sequence