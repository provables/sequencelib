/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062544 sequence
-/

namespace Sequence

@[OEIS := A062544, offset := 0, maxIndex := 100, derive := true]
def A062544 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((y * y) + x) / (1 + x)) + x) + y) (λ (x _y) ↦ x) x 1 1 -
  loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x) x 1 1

end Sequence