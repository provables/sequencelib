/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048624 sequence
-/

namespace Sequence

@[OEIS := A048624, offset := 0, maxIndex := 15, derive := true]
def A048624 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) x 2 1

end Sequence