/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239280 sequence
-/

namespace Sequence

@[OEIS := A239280, offset := 1, maxIndex := 4, derive := true]
def A239280 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x * x) * y) (x - 2) (((2 * loop (λ (x _y) ↦ (2 * x) + 1) (1 + x) 1) + 1) + 1)

end Sequence