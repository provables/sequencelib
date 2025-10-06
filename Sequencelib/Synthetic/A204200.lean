/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204200 sequence
-/

namespace Sequence

@[OEIS := A204200, offset := 1, maxIndex := 50, derive := true]
def A204200 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (((y * y) + x) / (1 + x)) + x) (λ (x _y) ↦ x) (((x - 1) * 3) - 1) 1 0

end Sequence