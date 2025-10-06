/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137399 sequence
-/

namespace Sequence

@[OEIS := A137399, offset := 0, maxIndex := 44, derive := true]
def A137399 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) ((x / 2) + loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) x 1 0) 1 + 1) / 2

end Sequence