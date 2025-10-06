/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070638 sequence
-/

namespace Sequence

@[OEIS := A070638, offset := 0, maxIndex := 96, derive := true]
def A070638 (x : ℕ) : ℤ :=
  (x * x) % (loop (λ (x _y) ↦ x * x) 2 2 - 1)

end Sequence