/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A339516 sequence
-/

namespace Sequence

@[OEIS := A339516, offset := 1, maxIndex := 20, derive := true]
def A339516 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y) ↦ (2 * ((x * y) - y)) - x) x 1 + x) + x

end Sequence