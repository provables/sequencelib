/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242569 sequence
-/

namespace Sequence

@[OEIS := A242569, offset := 1, maxIndex := 24, derive := true]
def A242569 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y) ↦ x * y) x 1 - 2) * (1 + x)

end Sequence