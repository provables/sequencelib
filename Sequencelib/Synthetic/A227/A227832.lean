/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227832 sequence
-/

namespace Sequence

@[OEIS := A227832, offset := 1, maxIndex := 51, derive := true]
def A227832 (n : ℕ) : ℤ :=
  let x := n - 1
  1 - loop (λ (x _y) ↦ (-(2 + x))) x x

end Sequence