/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335807 sequence
-/

namespace Sequence

@[OEIS := A335807, offset := 0, maxIndex := 29, derive := true]
def A335807 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ (2 * (2 + x)) + y) (λ (x y) ↦ x + y) x 1 1 - 1) + 1) + loop (λ (_x _y) ↦ 0) x 1) + 1

end Sequence