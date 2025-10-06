/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166122 sequence
-/

namespace Sequence

@[OEIS := A166122, offset := 0, maxIndex := 100, derive := true]
def A166122 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 1 - ((2 * (x + x)) + x)) x 0 + 1

end Sequence