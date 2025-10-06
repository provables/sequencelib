/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006172 sequence
-/

namespace Sequence

@[OEIS := A006172, offset := 0, maxIndex := 30, derive := true]
def A006172 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x * 2) 1 0) + loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 2 1

end Sequence