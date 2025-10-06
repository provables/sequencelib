/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117576 sequence
-/

namespace Sequence

@[OEIS := A117576, offset := 0, maxIndex := 40, derive := true]
def A117576 (x : ℕ) : ℤ :=
  (1 + loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ ((-x)) - x) x 2 1) / 3

end Sequence