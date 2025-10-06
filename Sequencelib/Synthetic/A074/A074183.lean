/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074183 sequence
-/

namespace Sequence

@[OEIS := A074183, offset := 1, maxIndex := 28, derive := true]
def A074183 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ ((((((1 + ((x / 2) + x)) / 4) + 1) + x) / 2) / 2) + y) x 2 / 2

end Sequence