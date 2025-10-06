/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323202 sequence
-/

namespace Sequence

@[OEIS := A323202, offset := 0, maxIndex := 74, derive := true]
def A323202 (x : ℕ) : ℤ :=
  ((x - 1) % (loop (λ (x _y) ↦ if x ≤ 0 then 2 else 0) x 1 + 2)) - 1

end Sequence