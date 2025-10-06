/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292220 sequence
-/

namespace Sequence

@[OEIS := A292220, offset := 0, maxIndex := 100, derive := true]
def A292220 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x _y) ↦ (-x)) (x - 1) 1) / (1 + x)

end Sequence