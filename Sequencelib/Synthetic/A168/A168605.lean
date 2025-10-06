/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168605 sequence
-/

namespace Sequence

@[OEIS := A168605, offset := 3, maxIndex := 100, derive := true]
def A168605 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop (λ (x _y) ↦ 2 + (2 * ((x / 2) + x))) x 1 + 2) - 2) + 2) - loop (λ (x _y) ↦ x + x) x 2

end Sequence