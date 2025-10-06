/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099895 sequence
-/

namespace Sequence

@[OEIS := A099895, offset := 0, maxIndex := 64, derive := true]
def A099895 (x : ℕ) : ℕ :=
  Int.toNat <| if ((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x - 1) - x) - x) + 2) ≤ 0 then 0 else (1 + x) + x

end Sequence