/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186809 sequence
-/

namespace Sequence

@[OEIS := A186809, offset := 0, maxIndex := 90, derive := true]
def A186809 (x : ℕ) : ℤ :=
  ((x % 2) - 2) * loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 0 1

end Sequence