/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167554 sequence
-/

namespace Sequence

@[OEIS := A167554, offset := 2, maxIndex := 100, derive := true]
def A167554 (n : ℕ) : ℤ :=
  let x := n - 2
  ((loop (λ (x y) ↦ ((y - 2) * y) + x) x 0 - 2) - x) - x

end Sequence