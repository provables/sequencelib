/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110427 sequence
-/

namespace Sequence

@[OEIS := A110427, offset := 1, maxIndex := 43, derive := true]
def A110427 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + (loop (λ (x y) ↦ x - y) x 1 * x)

end Sequence