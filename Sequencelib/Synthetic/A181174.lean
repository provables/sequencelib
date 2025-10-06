/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181174 sequence
-/

namespace Sequence

@[OEIS := A181174, offset := 0, maxIndex := 13, derive := true]
def A181174 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x) x 1 * loop2 (λ (x y) ↦ (2 * y) + x) (λ (x _y) ↦ x) x 1 0

end Sequence