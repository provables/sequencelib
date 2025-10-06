/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A281698 sequence
-/

namespace Sequence

@[OEIS := A281698, offset := 0, maxIndex := 100, derive := true]
def A281698 (x : ℕ) : ℕ :=
  Int.toNat <| (((((1 + loop (λ (x _y) ↦ (x + x) + x) x 2) + loop (λ (x _y) ↦ x + x) x 1) * loop (λ (x _y) ↦ x + x) x 1) / 2) + 1) +
  loop (λ (x _y) ↦ 2 * x) x 2

end Sequence