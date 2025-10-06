/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A333718 sequence
-/

namespace Sequence

@[OEIS := A333718, offset := 0, maxIndex := 16, derive := true]
def A333718 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * loop (λ (x y) ↦ x * y) 4 x) - x) - y) (λ (x _y) ↦ x) x 1 1

end Sequence