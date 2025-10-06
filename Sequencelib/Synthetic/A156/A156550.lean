/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156550 sequence
-/

namespace Sequence

@[OEIS := A156550, offset := 0, maxIndex := 31, derive := true]
def A156550 (x : ℕ) : ℤ :=
  1 + (2 + loop (λ (x _y) ↦ 1 - (x + x)) x 2)

end Sequence