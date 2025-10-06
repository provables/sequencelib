/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A217290 sequence
-/

namespace Sequence

@[OEIS := A217290, offset := 0, maxIndex := 9, derive := true]
def A217290 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ ((x - 1) / 2) - y) 2 x - 2) + x

end Sequence