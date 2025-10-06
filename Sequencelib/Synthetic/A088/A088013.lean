/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088013 sequence
-/

namespace Sequence

@[OEIS := A088013, offset := 0, maxIndex := 25, derive := true]
def A088013 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) x 1 1 + loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0) / 2

end Sequence