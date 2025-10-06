/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049071 sequence
-/

namespace Sequence

@[OEIS := A049071, offset := 0, maxIndex := 79, derive := true]
def A049071 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 + (y - x)) (λ (_x _y) ↦ 0) x 0 2

end Sequence