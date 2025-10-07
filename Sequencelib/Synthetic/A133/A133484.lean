/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133484 sequence
-/

namespace Sequence

@[OEIS := A133484, offset := 1, maxIndex := 8, derive := true]
def A133484 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x % 2) x + 1

end Sequence