/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013915 sequence
-/

namespace Sequence

@[OEIS := A013915, offset := 0, maxIndex := 100, derive := true]
def A013915 (x : ℕ) : ℕ :=
  Int.toNat <| x + loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 3 2

end Sequence