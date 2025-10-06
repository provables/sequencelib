/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145070 sequence
-/

namespace Sequence

@[OEIS := A145070, offset := 1, maxIndex := 30, derive := true]
def A145070 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) y 1 + x) + y) (1 + x) 0

end Sequence