/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051437 sequence
-/

namespace Sequence

@[OEIS := A051437, offset := 0, maxIndex := 100, derive := true]
def A051437 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x 1 + loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ x + x) x 0 1

end Sequence