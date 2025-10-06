/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105579 sequence
-/

namespace Sequence

@[OEIS := A105579, offset := 0, maxIndex := 46, derive := true]
def A105579 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 + (2 + (x - y))) (λ (x _y) ↦ x + x) x 1 1

end Sequence