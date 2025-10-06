/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101675 sequence
-/

namespace Sequence

@[OEIS := A101675, offset := 0, maxIndex := 100, derive := true]
def A101675 (x : ℕ) : ℤ :=
  (1 - (x % 3)) + loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 0 1

end Sequence