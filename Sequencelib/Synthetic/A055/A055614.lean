/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055614 sequence
-/

namespace Sequence

@[OEIS := A055614, offset := 3, maxIndex := 9, derive := true]
def A055614 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y 1 - x) x 0 + 1) % loop (λ (x _y) ↦ x + x) x 1) + 1) - x

end Sequence