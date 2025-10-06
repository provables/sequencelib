/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166114 sequence
-/

namespace Sequence

@[OEIS := A166114, offset := 0, maxIndex := 100, derive := true]
def A166114 (x : ℕ) : ℤ :=
  1 + loop (λ (x _y) ↦ 1 - ((x * 2) * 2)) x 0

end Sequence