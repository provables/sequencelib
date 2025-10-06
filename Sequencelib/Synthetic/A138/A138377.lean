/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138377 sequence
-/

namespace Sequence

@[OEIS := A138377, offset := 0, maxIndex := 100, derive := true]
def A138377 (x : ℕ) : ℤ :=
  (loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x y) ↦ y - x) x 0 (1 - (x % 2)) + 1) / 2

end Sequence