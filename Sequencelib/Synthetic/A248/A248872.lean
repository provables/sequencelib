/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248872 sequence
-/

namespace Sequence

@[OEIS := A248872, offset := 1, maxIndex := 5, derive := true]
def A248872 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y + y) x 1 1 - x) + 2) * loop (λ (x _y) ↦ x + x) x 1) / 2

end Sequence