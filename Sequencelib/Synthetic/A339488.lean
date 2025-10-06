/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A339488 sequence
-/

namespace Sequence

@[OEIS := A339488, offset := 0, maxIndex := 34, derive := true]
def A339488 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ (x * x) - 2) 2 x - 2) * 3

end Sequence