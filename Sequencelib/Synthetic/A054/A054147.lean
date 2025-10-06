/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054147 sequence
-/

namespace Sequence

@[OEIS := A054147, offset := 0, maxIndex := 100, derive := true]
def A054147 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ 2 * ((x + x) - y)) (λ (x _y) ↦ x) x x 0 + 2) / 2) / 2) * 3

end Sequence