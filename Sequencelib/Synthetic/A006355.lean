/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006355 sequence
-/

namespace Sequence

@[OEIS := A006355, offset := 0, maxIndex := 100, derive := true]
def A006355 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 2 0

end Sequence