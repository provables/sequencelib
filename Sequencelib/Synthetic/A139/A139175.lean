/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139175 sequence
-/

namespace Sequence

@[OEIS := A139175, offset := 5, maxIndex := 20, derive := true]
def A139175 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((2 * loop (λ (x y) ↦ ((2 + (2 + y)) * x) + x) x 2) * 3) * 2) - 1

end Sequence