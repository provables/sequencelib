/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319116 sequence
-/

namespace Sequence

@[OEIS := A319116, offset := 0, maxIndex := 74, derive := true]
def A319116 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (y % loop (λ (x _y) ↦ 1 + (x + x)) 2 2) + x) x 1 % 2) * 2) - 1

end Sequence