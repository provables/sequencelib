/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169998 sequence
-/

namespace Sequence

@[OEIS := A169998, offset := 0, maxIndex := 45, derive := true]
def A169998 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - x) + y) (λ (x _y) ↦ (-x)) x 1 1

end Sequence