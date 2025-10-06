/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188599 sequence
-/

namespace Sequence

@[OEIS := A188599, offset := 0, maxIndex := 50, derive := true]
def A188599 (x : ℕ) : ℤ :=
  (loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ (y - x) + y) (x + x) 0 1 / 2) / 2

end Sequence