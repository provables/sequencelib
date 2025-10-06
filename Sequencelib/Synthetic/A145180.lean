/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145180 sequence
-/

namespace Sequence

@[OEIS := A145180, offset := 1, maxIndex := 5, derive := true]
def A145180 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((2 + (x * x)) * x) + x) x (2 + 4)

end Sequence