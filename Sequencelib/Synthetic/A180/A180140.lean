/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180140 sequence
-/

namespace Sequence

@[OEIS := A180140, offset := 0, maxIndex := 100, derive := true]
def A180140 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y * loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y * 2) (3) 0 1) / 2) + x) (λ (x y) ↦ 2 * (x + y)) x 1 1

end Sequence