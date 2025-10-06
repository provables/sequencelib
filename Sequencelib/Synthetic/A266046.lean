/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266046 sequence
-/

namespace Sequence

@[OEIS := A266046, offset := 0, maxIndex := 100, derive := true]
def A266046 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ (y - x) * 2) x 1 0

end Sequence