/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166151 sequence
-/

namespace Sequence

@[OEIS := A166151, offset := 1, maxIndex := 100, derive := true]
def A166151 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((1 + 4) * loop (λ (x y) ↦ x + y) x x)

end Sequence