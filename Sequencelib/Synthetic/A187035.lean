/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187035 sequence
-/

namespace Sequence

@[OEIS := A187035, offset := 0, maxIndex := 60, derive := true]
def A187035 (x : ℕ) : ℤ :=
  ((loop (λ (x _y) ↦ (-x)) x (x / 3) / 2) + 1) - x % 2

end Sequence