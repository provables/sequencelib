/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133257 sequence
-/

namespace Sequence

@[OEIS := A133257, offset := 0, maxIndex := 40, derive := true]
def A133257 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ 2 * (2 + y)) (λ (x _y) ↦ x) x 3 1

end Sequence