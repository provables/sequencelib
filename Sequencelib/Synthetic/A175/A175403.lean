/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175403 sequence
-/

namespace Sequence

@[OEIS := A175403, offset := 0, maxIndex := 4, derive := true]
def A175403 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ ((loop2 (λ (_x y) ↦ y + y) (λ (_x _y) ↦ 2) x 1 x * 2) - 1) + y) x x * 2) * 2) * 2) / 3

end Sequence