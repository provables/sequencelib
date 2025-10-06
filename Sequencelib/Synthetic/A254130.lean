/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254130 sequence
-/

namespace Sequence

@[OEIS := A254130, offset := 1, maxIndex := 9, derive := true]
def A254130 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN
  (λ (x : ℤ) ↦ ((((((loop2 (λ (x y : ℤ) ↦ (x + y)) (λ (x y : ℤ) ↦ x) (x) (1) (1) - x) / (1 + 2)) + 1) + x) / 2) % 2)) x

end Sequence