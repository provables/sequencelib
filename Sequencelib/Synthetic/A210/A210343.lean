/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210343 sequence
-/

namespace Sequence

@[OEIS := A210343, offset := 0, maxIndex := 69, derive := true]
def A210343 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0)

end Sequence