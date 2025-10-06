/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A009531 sequence
-/

namespace Sequence

@[OEIS := A009531, offset := 0, maxIndex := 100, derive := true]
def A009531 (x : ℕ) : ℤ :=
  (-loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x x 1)

end Sequence