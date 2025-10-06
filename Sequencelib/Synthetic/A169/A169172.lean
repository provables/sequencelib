/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169172 sequence
-/

namespace Sequence

@[OEIS := A169172, offset := 0, maxIndex := 16, derive := true]
def A169172 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 - y) * x) (λ (_x _y) ↦ 2) x 1 1

end Sequence