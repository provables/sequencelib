/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138134 sequence
-/

namespace Sequence

@[OEIS := A138134, offset := 0, maxIndex := 18, derive := true]
def A138134 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((loop (λ (x y) ↦ (2 + y) * x) 2 x - 1) - x) + y) (λ (x _y) ↦ x) x 1 1 / 2

end Sequence