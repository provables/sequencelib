/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134429 sequence
-/

namespace Sequence

@[OEIS := A134429, offset := 0, maxIndex := 100, derive := true]
def A134429 (x : ℕ) : ℤ :=
  ((1 + (2 * (loop (λ (x _y) ↦ (-x)) x x / 4))) * 4) - 1

end Sequence