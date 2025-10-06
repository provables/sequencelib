/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122112 sequence
-/

namespace Sequence

@[OEIS := A122112, offset := 0, maxIndex := 100, derive := true]
def A122112 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 * (y - x)) (λ (x y) ↦ x + y) x 1 0

end Sequence