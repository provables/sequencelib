/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083594 sequence
-/

namespace Sequence

@[OEIS := A083594, offset := 0, maxIndex := 32, derive := true]
def A083594 (x : ℕ) : ℤ :=
  1 + loop (λ (x _y) ↦ 2 * (2 - x)) x 0

end Sequence