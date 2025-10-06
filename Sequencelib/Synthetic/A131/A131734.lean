/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131734 sequence
-/

namespace Sequence

@[OEIS := A131734, offset := 0, maxIndex := 100, derive := true]
def A131734 (x : ℕ) : ℤ :=
  (x % 2) * loop2 (λ (x y) ↦ y * x) (λ (x _y) ↦ (-x)) x 1 1

end Sequence