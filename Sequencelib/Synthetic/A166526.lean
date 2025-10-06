/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166526 sequence
-/

namespace Sequence

@[OEIS := A166526, offset := 1, maxIndex := 100, derive := true]
def A166526 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 (1 + y) - x) x 1

end Sequence