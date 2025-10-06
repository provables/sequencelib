/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332232 sequence
-/

namespace Sequence

@[OEIS := A332232, offset := 1, maxIndex := 6, derive := true]
def A332232 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x * y)) y 1 + x) x 1 - 1) + 1) * loop (λ (x _y) ↦ x + x) x 1) + 1) /
  loop (λ (x y) ↦ x * y) x 1

end Sequence