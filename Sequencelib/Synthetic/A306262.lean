/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A306262 sequence
-/

namespace Sequence

@[OEIS := A306262, offset := 0, maxIndex := 100, derive := true]
def A306262 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 - loop (λ (_x _y) ↦ 0) x 1) - x) + 1) - x / 2) - x

end Sequence