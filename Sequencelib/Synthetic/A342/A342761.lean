/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342761 sequence
-/

namespace Sequence

@[OEIS := A342761, offset := 0, maxIndex := 30, derive := true]
def A342761 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ (2 / x) + x) x 1 2 / 2) + 1) + loop (λ (x _y) ↦ x + x) x 1) + 2

end Sequence