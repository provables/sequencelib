/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350384 sequence
-/

namespace Sequence

@[OEIS := A350384, offset := 0, maxIndex := 11, derive := true]
def A350384 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (-(3 * (2 * (x + x))))) (x * 3) 1

end Sequence