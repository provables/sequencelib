/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140657 sequence
-/

namespace Sequence

@[OEIS := A140657, offset := 0, maxIndex := 100, derive := true]
def A140657 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) x 1 + loop (λ (x _y) ↦ (-x)) x 3

end Sequence