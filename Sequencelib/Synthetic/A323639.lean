/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323639 sequence
-/

namespace Sequence

@[OEIS := A323639, offset := 0, maxIndex := 20, derive := true]
def A323639 (x : ℕ) : ℤ :=
  (-loop (λ (x _y) ↦ loop (λ (x _y) ↦ 3 * (2 - x)) 2 x + x) x 1)

end Sequence