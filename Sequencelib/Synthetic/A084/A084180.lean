/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084180 sequence
-/

namespace Sequence

@[OEIS := A084180, offset := 0, maxIndex := 12, derive := true]
def A084180 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 2 + (2 * (x + x))) x 0

end Sequence