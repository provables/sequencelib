/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131358 sequence
-/

namespace Sequence

@[OEIS := A131358, offset := 0, maxIndex := 89, derive := true]
def A131358 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 - x) (x * 2) 1 x / 3

end Sequence