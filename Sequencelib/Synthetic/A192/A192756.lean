/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192756 sequence
-/

namespace Sequence

@[OEIS := A192756, offset := 0, maxIndex := 33, derive := true]
def A192756 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 2 1 - 2) + x) x 0 * 2) - x

end Sequence