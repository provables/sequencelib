/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058181 sequence
-/

namespace Sequence

@[OEIS := A058181, offset := 0, maxIndex := 15, derive := true]
def A058181 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x * x) - y) (λ (x _y) ↦ x) x 1 1

end Sequence