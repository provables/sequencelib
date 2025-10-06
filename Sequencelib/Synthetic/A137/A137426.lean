/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137426 sequence
-/

namespace Sequence

@[OEIS := A137426, offset := 0, maxIndex := 41, derive := true]
def A137426 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 * (2 - (x + y))) (λ (x _y) ↦ x) x 1 0 - 1

end Sequence