/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131885 sequence
-/

namespace Sequence

@[OEIS := A131885, offset := 0, maxIndex := 34, derive := true]
def A131885 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ y - x) x 0 1 + loop (λ (x _y) ↦ x + x) (x - 1) 1

end Sequence