/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070653 sequence
-/

namespace Sequence

@[OEIS := A070653, offset := 0, maxIndex := 79, derive := true]
def A070653 (x : ℕ) : ℤ :=
  (x * x) % ((2 * loop (λ (x _y) ↦ x * x) 2 2) - 2)

end Sequence