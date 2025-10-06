/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027470 sequence
-/

namespace Sequence

@[OEIS := A027470, offset := 3, maxIndex := 100, derive := true]
def A027470 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 * x) - x) 2 y + x) (1 + x) 0

end Sequence