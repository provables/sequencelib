/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140683 sequence
-/

namespace Sequence

@[OEIS := A140683, offset := 0, maxIndex := 100, derive := true]
def A140683 (x : ℕ) : ℤ :=
  1 - (2 + loop (λ (x _y) ↦ (-(x + x))) x 3)

end Sequence