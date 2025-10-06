/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073096 sequence
-/

namespace Sequence

@[OEIS := A073096, offset := 0, maxIndex := 8, derive := true]
def A073096 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop (λ (x _y) ↦ x * x) (loop (λ (_x y) ↦ y) x 1) 2

end Sequence