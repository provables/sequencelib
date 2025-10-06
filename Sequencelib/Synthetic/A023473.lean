/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023473 sequence
-/

namespace Sequence

@[OEIS := A023473, offset := 0, maxIndex := 60, derive := true]
def A023473 (x : ℕ) : ℤ :=
  1 + (x - (2 * loop (λ (x _y) ↦ x * x) 2 2))

end Sequence