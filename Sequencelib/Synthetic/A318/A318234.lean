/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A318234 sequence
-/

namespace Sequence

@[OEIS := A318234, offset := 1, maxIndex := 7, derive := true]
def A318234 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (loop (λ (x _y) ↦ x + x) x 1 * (x - 2))) / 3) + 2

end Sequence