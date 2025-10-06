/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133345 sequence
-/

namespace Sequence

@[OEIS := A133345, offset := 0, maxIndex := 100, derive := true]
def A133345 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((loop (λ (x _y) ↦ x * x) 2 2 * y) - y) + x) (λ (x y) ↦ x + y) x 1 0

end Sequence