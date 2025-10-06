/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093410 sequence
-/

namespace Sequence

@[OEIS := A093410, offset := 1, maxIndex := 8, derive := true]
def A093410 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((((loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ 2 * (x + 2)) x 1 1 / 2) + 1) + x) + 1) + x) / 2) + x) + x

end Sequence