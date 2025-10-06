/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165746 sequence
-/

namespace Sequence

@[OEIS := A165746, offset := 0, maxIndex := 100, derive := true]
def A165746 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 3 * (x - 2)) x 1

end Sequence