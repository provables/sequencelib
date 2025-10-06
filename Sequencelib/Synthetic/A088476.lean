/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088476 sequence
-/

namespace Sequence

@[OEIS := A088476, offset := 1, maxIndex := 66, derive := true]
def A088476 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 - 2) - x / 3) 2 x + x

end Sequence