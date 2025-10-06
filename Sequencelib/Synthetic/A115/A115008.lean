/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115008 sequence
-/

namespace Sequence

@[OEIS := A115008, offset := 0, maxIndex := 37, derive := true]
def A115008 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0 + loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 0 1

end Sequence