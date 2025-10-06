/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280560 sequence
-/

namespace Sequence

@[OEIS := A280560, offset := 0, maxIndex := 74, derive := true]
def A280560 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop (λ (x _y) ↦ (-x)) x 2

end Sequence