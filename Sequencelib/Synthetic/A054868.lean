/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054868 sequence
-/

namespace Sequence

@[OEIS := A054868, offset := 0, maxIndex := 100, derive := true]
def A054868 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ 1 + (x - y)) (λ (_x y) ↦ y / 2) x x x) 2 x

end Sequence