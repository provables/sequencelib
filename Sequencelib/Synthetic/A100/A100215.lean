/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100215 sequence
-/

namespace Sequence

@[OEIS := A100215, offset := 0, maxIndex := 100, derive := true]
def A100215 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x y) ↦ y - x) x 2 1 - 1) + 1) + loop (λ (x _y) ↦ x + x) x 2

end Sequence