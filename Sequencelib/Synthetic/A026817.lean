/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026817 sequence
-/

namespace Sequence

@[OEIS := A026817, offset := 1, maxIndex := 43, derive := true]
def A026817 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ (x - 1) + y) ((2 * (x + 2)) + x) x + x * x

end Sequence