/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007881 sequence
-/

namespace Sequence

@[OEIS := A007881, offset := 0, maxIndex := 5, derive := true]
def A007881 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ ((((x - 2) / 2) * (x / 3)) + x) + y) x 1

end Sequence