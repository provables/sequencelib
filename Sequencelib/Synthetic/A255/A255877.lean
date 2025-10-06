/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255877 sequence
-/

namespace Sequence

@[OEIS := A255877, offset := 1, maxIndex := 37, derive := true]
def A255877 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ ((x * x) * x) + x) 1 (x + x) - 1

end Sequence