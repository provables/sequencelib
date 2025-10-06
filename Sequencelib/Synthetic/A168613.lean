/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168613 sequence
-/

namespace Sequence

@[OEIS := A168613, offset := 0, maxIndex := 100, derive := true]
def A168613 (x : ℕ) : ℤ :=
  ((loop (λ (x _y) ↦ (x + x) + x) x 1 - 1) - 2) - 2

end Sequence