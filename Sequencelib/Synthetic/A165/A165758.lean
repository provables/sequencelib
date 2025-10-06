/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165758 sequence
-/

namespace Sequence

@[OEIS := A165758, offset := 0, maxIndex := 100, derive := true]
def A165758 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 2 * (3 * (x - 2))) x 1

end Sequence