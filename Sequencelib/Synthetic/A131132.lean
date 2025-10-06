/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131132 sequence
-/

namespace Sequence

@[OEIS := A131132, offset := 0, maxIndex := 39, derive := true]
def A131132 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) x 2 1 / 2)) / 2

end Sequence