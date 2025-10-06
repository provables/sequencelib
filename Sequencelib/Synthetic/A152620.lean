/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152620 sequence
-/

namespace Sequence

@[OEIS := A152620, offset := 0, maxIndex := 19, derive := true]
def A152620 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 * ((3 * (x - y)) + x)) (λ (x _y) ↦ x) x 1 1 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence