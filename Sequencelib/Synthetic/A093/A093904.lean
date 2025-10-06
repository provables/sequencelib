/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093904 sequence
-/

namespace Sequence

@[OEIS := A093904, offset := 1, maxIndex := 12, derive := true]
def A093904 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x * (y - 1))) y 1 + x * y) x 0

end Sequence