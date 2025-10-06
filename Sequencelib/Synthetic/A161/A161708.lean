/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161708 sequence
-/

namespace Sequence

@[OEIS := A161708, offset := 0, maxIndex := 100, derive := true]
def A161708 (x : ℕ) : ℤ :=
  ((loop (λ (x _y) ↦ (loop (λ (x y) ↦ (x * y) - 2 * (x + 1)) x 1 * (2 * x)) + 2) 2 1 + x) * (x * (1 - x))) + (x + 1)

end Sequence