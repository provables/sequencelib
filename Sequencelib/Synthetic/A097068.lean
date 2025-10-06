/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097068 sequence
-/

namespace Sequence

@[OEIS := A097068, offset := 0, maxIndex := 16, derive := true]
def A097068 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) x 1 1 * loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) ((x * 2) * 2) 0 1

end Sequence