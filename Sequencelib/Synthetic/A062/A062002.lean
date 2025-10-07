/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062002 sequence
-/

namespace Sequence

@[OEIS := A062002, offset := 1, maxIndex := 7, derive := true]
def A062002 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (((x * loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 1) / ((2 * 2) + 1)) + 1) % 2) x

end Sequence