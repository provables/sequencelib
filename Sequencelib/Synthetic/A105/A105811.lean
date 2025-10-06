/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105811 sequence
-/

namespace Sequence

@[OEIS := A105811, offset := 0, maxIndex := 67, derive := true]
def A105811 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - 1) - x) (λ (_x _y) ↦ 1) x 1 x

end Sequence