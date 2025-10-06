/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176778 sequence
-/

namespace Sequence

@[OEIS := A176778, offset := 0, maxIndex := 100, derive := true]
def A176778 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) x 1 - (2 + x) * x

end Sequence