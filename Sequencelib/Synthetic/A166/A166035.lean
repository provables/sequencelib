/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166035 sequence
-/

namespace Sequence

@[OEIS := A166035, offset := 0, maxIndex := 100, derive := true]
def A166035 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x _y) ↦ (x + x) + x) (y - 1) 1 - 2 * (x + x)) x 1

end Sequence