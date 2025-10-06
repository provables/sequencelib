/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084244 sequence
-/

namespace Sequence

@[OEIS := A084244, offset := 0, maxIndex := 100, derive := true]
def A084244 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (2 * (2 * (y - x))) + x) (λ (_x _y) ↦ 0) x 1 2

end Sequence