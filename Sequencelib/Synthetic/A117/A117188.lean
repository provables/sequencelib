/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117188 sequence
-/

namespace Sequence

@[OEIS := A117188, offset := 0, maxIndex := 100, derive := true]
def A117188 (x : ℕ) : ℤ :=
  if (x % 2) ≤ 0 then loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 2 else 0

end Sequence