/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109363 sequence
-/

namespace Sequence

@[OEIS := A109363, offset := 0, maxIndex := 33, derive := true]
def A109363 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ 2 * (x + y)) x 0 - 1) - x

end Sequence