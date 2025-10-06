/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077134 sequence
-/

namespace Sequence

@[OEIS := A077134, offset := 0, maxIndex := 12, derive := true]
def A077134 (x : ℕ) : ℤ :=
  (1 + loop (λ (x y) ↦ x * y) x 1) / 2

end Sequence