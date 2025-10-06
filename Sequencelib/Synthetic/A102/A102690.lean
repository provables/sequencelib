/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102690 sequence
-/

namespace Sequence

@[OEIS := A102690, offset := 1, maxIndex := 21, derive := true]
def A102690 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * loop (λ (x _y) ↦ (2 + x) + x) 2 1) + x / 3) / (2 + x)

end Sequence