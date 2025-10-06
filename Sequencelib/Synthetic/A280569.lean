/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280569 sequence
-/

namespace Sequence

@[OEIS := A280569, offset := 0, maxIndex := 74, derive := true]
def A280569 (x : ℕ) : ℤ :=
  (((if (x % (1 + 4)) ≤ 0 then 1 else 0 % 2) % (1 + x)) + 1) * loop (λ (x _y) ↦ (-x)) x 1

end Sequence