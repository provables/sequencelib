/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295485 sequence
-/

namespace Sequence

@[OEIS := A295485, offset := 1, maxIndex := 7, derive := true]
def A295485 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) y x / x) x 1 + 1) + 2

end Sequence