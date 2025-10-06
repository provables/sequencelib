/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135913 sequence
-/

namespace Sequence

@[OEIS := A135913, offset := 0, maxIndex := 27, derive := true]
def A135913 (x : ℕ) : ℤ :=
  (2 - loop (λ (x _y) ↦ (x + x) + x) x 1) + loop (λ (x _y) ↦ x + x) (x + 1) 2

end Sequence