/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111297 sequence
-/

namespace Sequence

@[OEIS := A111297, offset := 0, maxIndex := 100, derive := true]
def A111297 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (x + x) + y) (λ (_x _y) ↦ 0) x 4 x / 2) / 2

end Sequence