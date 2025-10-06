/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A009769 sequence
-/

namespace Sequence

@[OEIS := A009769, offset := 0, maxIndex := 21, derive := true]
def A009769 (x : ℕ) : ℤ :=
  (loop2 (λ (x y) ↦ 2 * (x - y)) (λ (x _y) ↦ x) x 1 1 * loop (λ (x y) ↦ x * y) x 1) * loop (λ (x _y) ↦ (-x)) x 1

end Sequence