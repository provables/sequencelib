/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054516 sequence
-/

namespace Sequence

@[OEIS := A054516, offset := 3, maxIndex := 100, derive := true]
def A054516 (n : ℕ) : ℤ :=
  let x := n - 3
  loop (λ (x y) ↦ y - (x * y)) x 0 + x

end Sequence