/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154870 sequence
-/

namespace Sequence

@[OEIS := A154870, offset := 0, maxIndex := 86, derive := true]
def A154870 (x : ℕ) : ℤ :=
  (((loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 0 * 3) - x % 2) * 2) + 1

end Sequence