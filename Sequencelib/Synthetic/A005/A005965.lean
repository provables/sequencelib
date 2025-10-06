/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005965 sequence
-/

namespace Sequence

@[OEIS := A005965, offset := 1, maxIndex := 6, derive := true]
def A005965 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((((((loop (λ (x _y) ↦ (2 * ((x - 1) + x)) + x) x 1 / 2) + 1) / 2) / 2) + 2) + x) * x) / 2) + 1

end Sequence