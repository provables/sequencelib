/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179610 sequence
-/

namespace Sequence

@[OEIS := A179610, offset := 0, maxIndex := 23, derive := true]
def A179610 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) y 1 0 + (x * 2) * 2) x 1

end Sequence