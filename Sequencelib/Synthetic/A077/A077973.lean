/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077973 sequence
-/

namespace Sequence

@[OEIS := A077973, offset := 0, maxIndex := 100, derive := true]
def A077973 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 - (2 * (x + y))) (λ (x _y) ↦ x) x 1 0

end Sequence