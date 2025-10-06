/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037499 sequence
-/

namespace Sequence

@[OEIS := A037499, offset := 1, maxIndex := 21, derive := true]
def A037499 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (2 * ((x + x) + x)) + (2 + x) % 3) x 1

end Sequence