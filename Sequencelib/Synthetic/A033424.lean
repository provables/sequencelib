/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033424 sequence
-/

namespace Sequence

@[OEIS := A033424, offset := 1, maxIndex := 100, derive := true]
def A033424 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x * x) 3 (2 + (2 * 4)) / (1 + x)

end Sequence