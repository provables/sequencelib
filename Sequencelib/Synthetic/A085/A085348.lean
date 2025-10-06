/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085348 sequence
-/

namespace Sequence

@[OEIS := A085348, offset := 0, maxIndex := 22, derive := true]
def A085348 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((y % 2) + 2) + 2) * x) - y) (λ (x _y) ↦ x) x 1 0

end Sequence