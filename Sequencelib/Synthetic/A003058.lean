/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003058 sequence
-/

namespace Sequence

@[OEIS := A003058, offset := 1, maxIndex := 34, derive := true]
def A003058 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ ((y - x) / (x * x)) + x) x 1

end Sequence