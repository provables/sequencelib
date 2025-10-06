/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007945 sequence
-/

namespace Sequence

@[OEIS := A007945, offset := 0, maxIndex := 79, derive := true]
def A007945 (x : ℕ) : ℤ :=
  1 + loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (y - 2) - x) x 1 2

end Sequence