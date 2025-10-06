/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186422 sequence
-/

namespace Sequence

@[OEIS := A186422, offset := 0, maxIndex := 83, derive := true]
def A186422 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (y % 2) - x) x 0 / 2) * 2) + 1

end Sequence