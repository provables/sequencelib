/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185918 sequence
-/

namespace Sequence

@[OEIS := A185918, offset := 0, maxIndex := 100, derive := true]
def A185918 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (2 + y) * x) 2 x - 2) * x) - 1

end Sequence