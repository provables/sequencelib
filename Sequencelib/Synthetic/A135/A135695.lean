/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135695 sequence
-/

namespace Sequence

@[OEIS := A135695, offset := 0, maxIndex := 78, derive := true]
def A135695 (x : ℕ) : ℤ :=
  (((((((loop (λ (x _y) ↦ 2 + (2 * (x + x))) (x / 2) 1 % 3) - 1) + 2) % 3) - 1) % (2 + 4)) + 1) - 3

end Sequence