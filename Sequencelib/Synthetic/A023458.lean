/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023458 sequence
-/

namespace Sequence

@[OEIS := A023458, offset := 0, maxIndex := 60, derive := true]
def A023458 (x : ℕ) : ℤ :=
  x - loop (λ (x _y) ↦ x * x) 2 2

end Sequence