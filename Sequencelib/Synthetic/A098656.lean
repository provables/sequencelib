/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098656 sequence
-/

namespace Sequence

@[OEIS := A098656, offset := 0, maxIndex := 31, derive := true]
def A098656 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ x + x) x 1 * loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ (x - 1) + x) x 0 1) / 2

end Sequence