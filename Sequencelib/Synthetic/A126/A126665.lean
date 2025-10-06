/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126665 sequence
-/

namespace Sequence

@[OEIS := A126665, offset := 0, maxIndex := 53, derive := true]
def A126665 (x : ℕ) : ℤ :=
  ((1 + (2 + x)) * (loop (λ (x y) ↦ (2 + y) * x) 2 1 - x)) +
  ((((((((((((((3 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1)

end Sequence