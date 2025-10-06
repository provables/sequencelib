/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013549 sequence
-/

namespace Sequence

@[OEIS := A013549, offset := 1, maxIndex := 6, derive := true]
def A013549 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((((loop (λ (x _y) ↦ 3 * (2 + x)) 0 1 * x) / 2) / 2) + 1) * ((((x * x) + x) / 2) * x)) + 1) / 2) + 1

end Sequence