/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025171 sequence
-/

namespace Sequence

@[OEIS := A025171, offset := 0, maxIndex := 100, derive := true]
def A025171 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ (x - ((x * 2) * 2)) - x) x 1 0 * loop (λ (x _y) ↦ 2 * x) x 1

end Sequence