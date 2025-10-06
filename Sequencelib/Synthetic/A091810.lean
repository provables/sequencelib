/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091810 sequence
-/

namespace Sequence

@[OEIS := A091810, offset := 0, maxIndex := 23, derive := true]
def A091810 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x _y) ↦ x * x) 2 y * x) y (1 + y) * x) x 1

end Sequence