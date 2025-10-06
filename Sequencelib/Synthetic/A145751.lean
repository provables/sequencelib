/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145751 sequence
-/

namespace Sequence

@[OEIS := A145751, offset := 0, maxIndex := 44, derive := true]
def A145751 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ x - (y % x)) x 1 2

end Sequence