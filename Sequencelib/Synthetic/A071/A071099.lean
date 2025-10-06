/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071099 sequence
-/

namespace Sequence

@[OEIS := A071099, offset := 0, maxIndex := 100, derive := true]
def A071099 (x : ℕ) : ℤ :=
  1 + (((2 + x) * x) - loop (λ (x _y) ↦ x + x) x 1)

end Sequence