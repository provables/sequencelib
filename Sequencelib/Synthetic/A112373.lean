/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112373 sequence
-/

namespace Sequence

@[OEIS := A112373, offset := 0, maxIndex := 9, derive := true]
def A112373 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (x y) ↦ y + loop (λ (x _y) ↦ x) 2 ((x * y) * y)) x 1 1

end Sequence