/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056158 sequence
-/

namespace Sequence

@[OEIS := A056158, offset := 3, maxIndex := 99, derive := true]
def A056158 (n : ℕ) : ℤ :=
  let x := n - 3
  (loop (λ (x y) ↦ y - (x * y)) x 0 - 2) * 2

end Sequence