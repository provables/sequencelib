/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226638 sequence
-/

namespace Sequence

@[OEIS := A226638, offset := 0, maxIndex := 25, derive := true]
def A226638 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) x 0 1 * loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x - 1) 1 2

end Sequence