/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074099 sequence
-/

namespace Sequence

@[OEIS := A074099, offset := 1, maxIndex := 21, derive := true]
def A074099 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ x + x) x 1 / (1 + x)

end Sequence