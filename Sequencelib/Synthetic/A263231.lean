/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263231 sequence
-/

namespace Sequence

@[OEIS := A263231, offset := 0, maxIndex := 100, derive := true]
def A263231 (x : ℕ) : ℤ :=
  (((((((((loop (λ (x y) ↦ ((x - 2) * y) + x) 2 x * 2) * 2) - 1) / 2) + 2) * 2) - 1) + x) * x) / 2

end Sequence