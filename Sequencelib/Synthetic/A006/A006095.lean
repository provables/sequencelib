/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006095 sequence
-/

namespace Sequence

@[OEIS := A006095, offset := 0, maxIndex := 100, derive := true]
def A006095 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y - 1) * y) + x) (λ (_x y) ↦ y + y) x 0 1 / 2

end Sequence