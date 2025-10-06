/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295579 sequence
-/

namespace Sequence

@[OEIS := A295579, offset := 3, maxIndex := 15, derive := true]
def A295579 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((((((((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (y * 2) 1 - x) x 1 / 2) + 1) / 2) + 1) + x) + 1) / 2) / 2) + 1) + x) +
  1

end Sequence