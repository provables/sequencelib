/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319117 sequence
-/

namespace Sequence

@[OEIS := A319117, offset := 0, maxIndex := 73, derive := true]
def A319117 (x : ℕ) : ℤ :=
  (((((((loop (λ (x _y) ↦ loop (λ (x y) ↦ (1 + (x / 2)) + y) 2 x) 2 x + 1) - x) / 2) % 2) + 1) * 2) - 2) - 1

end Sequence