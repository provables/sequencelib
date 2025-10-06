/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048972 sequence
-/

namespace Sequence

@[OEIS := A048972, offset := 1, maxIndex := 13, derive := true]
def A048972 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((((loop2 (λ (x y : ℤ) ↦ (0 - y)) (λ (x y : ℤ) ↦ x) (x) (2) (1) * 2) * 2) - x) + 1)) x

end Sequence