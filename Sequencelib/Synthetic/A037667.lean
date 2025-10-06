/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037667 sequence
-/

namespace Sequence

@[OEIS := A037667, offset := 1, maxIndex := 25, derive := true]
def A037667 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 + (2 * (x + x))) (1 + x) 2 / 3

end Sequence